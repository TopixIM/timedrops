
(ns app.comp.dashboard
  (:require [hsl.core :refer [hsl]]
            [app.schema :as schema]
            [respo-ui.core :as ui]
            [respo.macros
             :refer
             [defcomp list-> mutation-> cursor-> <> span div button input]]
            [respo.comp.space :refer [=<]]
            [app.config :as config]
            [app.comp.kit :refer [comp-title]]
            [inflow-popup.comp.dialog :refer [comp-dialog]]
            ["dayjs" :as dayjs]
            [app.comp.timedrop :refer [comp-timedrop]]
            [respo.util.list :refer [map-val]]))

(defcomp
 comp-dashboard
 (states timedrops)
 (let [state (or (:data states) {:show-dialog? false, :draft "", :time nil})]
   (div
    {:style {:padding 16}}
    (div
     {}
     (button
      {:style ui/button,
       :inner-text "Drop",
       :on-click (fn [e d! m!]
         (m! {:show-dialog? true, :draft "", :time (.now js/Date)})
         (js/setTimeout
          (fn [] (let [target (.querySelector js/document ".input")] (.focus target)))
          200))}))
    (=< nil 16)
    (list->
     {}
     (->> timedrops
          (sort-by (fn [[k timedrop]] (unchecked-negate (:time timedrop))))
          (map-val (fn [timedrop] (cursor-> (:id timedrop) comp-timedrop states timedrop)))))
    (when (:show-dialog? state)
      (comp-dialog
       (fn [mutate!] (mutate! %cursor (assoc state :show-dialog? false)))
       (div
        {:style {:min-width 260}}
        (<>
         (-> (:time state) dayjs (.format "MM-DD HH:mm:ss"))
         {:font-size 24, :font-family ui/font-fancy})
        (div
         {}
         (input
          {:class-name "input",
           :style (merge ui/input {:width "100%"}),
           :value (:draft state),
           :placeholder "Some notes",
           :on-input (mutation-> (assoc state :draft (:value %e)))}))
        (=< nil 8)
        (div
         {:style ui/row-parted}
         (span {})
         (button
          {:style ui/button,
           :inner-text "Submit",
           :on-click (fn [e d! m!]
             (m! (assoc state :show-dialog? false))
             (d! :timedrop/create-one {:time (:time state), :text (:draft state)}))}))))))))
