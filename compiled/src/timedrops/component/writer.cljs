
(ns timedrops.component.writer
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span input button]]
            [respo.component.debug :refer [comp-debug]]
            [timedrops.component.event :refer [comp-event]]
            [timedrops.util.text :refer [space]]))

(def style-writer {:padding "8px 8px"})

(defn init-state [] "")

(defn update-state [state text] text)

(defn handle-input [mutate] (fn [e dispatch] (mutate (:value e))))

(defn handle-click [state mutate]
  (fn [e dispatch]
    (if (> (count state) 0)
      (do (mutate "") (dispatch :event/add state)))))

(defn handle-back [e dispatch]
  (dispatch :router/navigate [:portal nil]))

(def style-input
 {:line-height 2,
  :font-size "16px",
  :padding "0 0px",
  :outline "none",
  :border "none",
  :font-family "Roboto"})

(def style-button
 {:line-height 2,
  :color (hsl 0 0 100),
  :font-size "16px",
  :background-color (hsl 200 80 70),
  :padding "0 8px",
  :border "none",
  :outine "none",
  :font-family "Roboto"})

(def style-container
 {:overflow "auto", :flex 1, :padding-bottom "200px"})

(defn render []
  (fn [state mutate]
    (div
      {:style style-writer}
      (div
        {}
        (input
          {:style style-input,
           :event {:input (handle-input mutate)},
           :attrs {:placeholder "A thing...", :value state}})
        (space 16 nil)
        (button
          {:style style-button,
           :event {:click (handle-click state mutate)},
           :attrs {:inner-text "Save"}})
        (space 16 nil)
        (button
          {:style style-button,
           :event {:click handle-back},
           :attrs {:inner-text "Cancel"}}))
      (comment comp-debug store {}))))

(def comp-writer (create-comp :writer init-state update-state render))
