
(ns timedrops.component.editor
  (:require [respo.alias :refer [create-comp div span button]]
            [hsl.core :refer [hsl]]
            [timedrops.util.text :refer [space]]))

(def style-editor {:padding "8px"})

(def style-button
 {:line-height 2,
  :color "white",
  :font-size "14px",
  :background-color (hsl 120 80 70),
  :padding "0 8px",
  :outline "none",
  :border "none",
  :margin "0 8px"})

(def style-button-rm
 (merge style-button {:background-color (hsl 0 80 50)}))

(def style-content {:line-height 2})

(defn handle-back [e dispatch]
  (dispatch :router/navigate [:portal nil]))

(defn handle-remove [event-id]
  (fn [e dispatch] (dispatch :event/remove event-id)))

(defn render [event]
  (fn [state mutate]
    (div
      {:style style-editor}
      (div
        {}
        (span
          {:style style-content, :attrs {:inner-text (:text event)}})
        (space 16 0)
        (span
          {:style style-content, :attrs {:inner-text (:time event)}}))
      (div
        {}
        (button
          {:style style-button,
           :event {:click handle-back},
           :attrs {:inner-text "Back"}})
        (button
          {:style style-button-rm,
           :event {:click (handle-remove (:id event))},
           :attrs {:inner-text "Remove"}})))))

(def comp-editor (create-comp :editor render))
