
(ns timedrops.component.event
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span]]
            [timedrops.util.text :refer [text space]]
            [timedrops.util.time :refer [pretty-duration]]
            [respo.component.debug :refer [comp-debug]]))

(defn style-event [index]
  {:line-height 2,
   :align-items "center",
   :font-size "16px",
   :top (str (* index 50) "px"),
   :background-color (hsl 120 20 96),
   :width "100%",
   :padding "8px 8px",
   :display "flex",
   :position "absolute",
   :transition-duration "400ms",
   :font-family "Roboto"})

(def style-time
 {:min-width "80px",
  :color (hsl 0 0 70),
  :font-size "14px",
  :display "inline-block"})

(def style-content
 {:min-width "160px", :color (hsl 0 0 40), :display "inline-block"})

(defn handle-rebase [event-id]
  (fn [e dispatch] (dispatch :time/rebase event-id)))

(defn handle-edit [event-id]
  (fn [e dispatch] (dispatch :router/navigate [:editor event-id])))

(defn render [event index base-time]
  (fn [state mutate]
    (let [delta-time (.abs js/Math (- base-time (:time event)))]
      (div
        {:style (style-event index)}
        (span
          {:style style-time,
           :event {:click (handle-rebase (:id event))},
           :attrs {:inner-text (pretty-duration delta-time)}})
        (space 16 nil)
        (span
          {:style style-content,
           :event {:click (handle-edit (:id event))},
           :attrs {:inner-text (:text event)}})
        (comment comp-debug event {})))))

(def comp-event (create-comp :event render))
