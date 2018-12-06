
(ns app.comp.timedrop
  (:require [hsl.core :refer [hsl]]
            [app.schema :as schema]
            [respo-ui.core :as ui]
            [respo.core
             :refer
             [defcomp list-> mutation-> action-> cursor-> <> span div button input]]
            [respo.comp.space :refer [=<]]
            [app.config :as config]
            [app.comp.kit :refer [comp-title]]
            [inflow-popup.comp.dialog :refer [comp-dialog]]
            ["dayjs" :as dayjs]
            [respo-ui.comp.icon :refer [comp-icon]]
            [respo-alerts.comp.alerts :refer [comp-confirm]])
  (:require-macros [clojure.core.strint :refer [<<]]))

(defcomp
 comp-timedrop
 (states timedrop)
 (div
  {:style (merge
           ui/row-parted
           {:border-bottom (<< "1px solid ~{(hsl 0 0 94)}"), :padding "8px 0"})}
  (span
   {}
   (<>
    (-> timedrop :time dayjs (.format "MM:DD HH:mm:ss"))
    {:font-size 20, :font-family ui/font-fancy})
   (=< 8 nil)
   (<> (or (:text timedrop) "checked") {:font-size 12, :color (hsl 0 0 70)}))
  (cursor->
   :confirm
   comp-confirm
   states
   {:trigger (span {:style {:color (hsl 0 0 80)}} (comp-icon :close)),
    :text "Sure to delete?"}
   (fn [e d! m!] (d! :timedrop/remove-one (:id timedrop))))))
