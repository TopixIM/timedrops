
(ns timedrops.component.portal
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span input button]]
            [respo.component.debug :refer [comp-debug]]
            [timedrops.component.event :refer [comp-event]]
            [timedrops.util.text :refer [space]]))

(defn init-state [store] "")

(defn update-state [state text] text)

(defn handle-input [mutate] (fn [e dispatch] (mutate (:value e))))

(defn handle-click [state mutate]
  (fn [e dispatch]
    (if (> (count state) 0)
      (do (dispatch :event/add state) (mutate "")))))

(def style-portal
 {:width "100%",
  :display "flex",
  :position "absolute",
  :flex-direction "column",
  :height "100%"})

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

(defn style-list [n]
  {:position "relative", :height (str (* n 40) "px")})

(def style-container
 {:overflow "auto", :flex 1, :padding-bottom "200px"})

(def style-header {:padding "8px 8px"})

(defn render [store]
  (fn [state mutate]
    (div
      {:style style-portal}
      (div
        {:style style-header}
        (input
          {:style style-input,
           :event {:input (handle-input mutate)},
           :attrs {:placeholder "A thing...", :value state}})
        (space 16 nil)
        (button
          {:style style-button,
           :event {:click (handle-click state mutate)},
           :attrs {:inner-text "Pin"}}))
      (div
        {:style style-container}
        (div
          {:style (style-list (count (:events store)))}
          (->>
            (:events store)
            (sort (fn [a b] (compare (:time (val b)) (:time (val a)))))
            (map-indexed
              (fn [index entry]
                (let [event-id (key entry) event (val entry)]
                  [event-id (comp-event event index (:now store))])))
            (into (sorted-map)))))
      (comment comp-debug store {}))))

(def comp-portal (create-comp :portal init-state update-state render))
