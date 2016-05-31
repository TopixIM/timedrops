
(ns timedrops.core
  (:require-macros [cljs.core.async.macros :refer [go]])
  (:require [respo-spa.core :refer [render]]
            [timedrops.component.container :refer [comp-container]]
            [timedrops.schema :as schema]
            [timedrops.util.id :refer [get-id!]]
            [timedrops.updater.core :refer [updater]]
            [cljs.core.async :refer [chan >! <! timeout]]
            [cljs.reader :refer [read-string]]
            [timedrops.util.detect :refer [in-app?]]))

(defonce storage-path (if (in-app?) "timedrops-app" "timedrops-tab"))

(defonce store-ref
 (atom
   (assoc
     (let [raw (.getItem js/localStorage storage-path)]
       (if (some? raw) (read-string raw) schema/store))
     :base-time
     (.valueOf (js/Date.)))))

(defonce states-ref (atom {}))

(declare persistent-store)

(defn dispatch [op op-data]
  (println "dispatch:" op op-data)
  (let [time (.valueOf (js/Date.))
        op-id (get-id!)
        store (updater @store-ref op op-data op-id time)]
    (persistent-store)
    (reset! store-ref store)))

(defn render-app []
  (let [target (.querySelector js/document "#app")]
    (render (comp-container @store-ref) target dispatch states-ref)))

(defn persistent-store []
  (let [raw (pr-str @store-ref)]
    (.setItem js/localStorage storage-path raw)))

(defn -main []
  (enable-console-print!)
  (render-app)
  (add-watch
    store-ref
    :changes
    (fn [] (render-app) (persistent-store)))
  (add-watch states-ref :changes render-app)
  (println "app started!")
  (if (some? navigator.serviceWorker)
    (-> navigator.serviceWorker
     (.register "./sw.js")
     (.then
       (fn [registration] (println "registered:" registration.core)))
     (.catch (fn [error] (println "failed:" error))))))

(set! js/window.onload -main)

(defn on-jsload [] (render-app) (println "code updated."))
