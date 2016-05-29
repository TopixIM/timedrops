
(ns timedrops.component.event
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span]]
            [timedrops.util.text :refer [text space]]))

(defn style-event [index]
  {:border-style "solid",
   :font-size "16px",
   :top (str (* index 40) "px"),
   :border-width "0 0 1px 0",
   :padding "8px 8px",
   :border-color (hsl 0 0 90),
   :position "absolute",
   :transition-duration "400ms",
   :font-family "Roboto"})

(defn render [event index now]
  (fn [state mutate]
    (let [delta-time (int (/ (- now (:time event)) 60000))]
      (div
        {:style (style-event index)}
        (text (str delta-time "mins"))
        (space 16 nil)
        (span {:style {}, :attrs {:inner-text (:text event)}})))))

(def comp-event (create-comp :event render))
