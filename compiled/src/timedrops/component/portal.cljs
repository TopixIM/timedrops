
(ns timedrops.component.portal
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span input button]]
            [respo.component.debug :refer [comp-debug]]
            [timedrops.component.event :refer [comp-event]]
            [timedrops.util.text :refer [space]]
            [timedrops.component.panel :refer [comp-panel]]))

(def style-portal {:width "100%", :position "absolute", :height "100%"})

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
  {:position "relative", :height (str (* n 50) "px")})

(def style-container {:padding-bottom "200px"})

(defn render [store]
  (fn [state mutate]
    (div
      {:style style-portal}
      (comp-panel)
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
                  [event-id
                   (comp-event event index (:base-time store))])))
            (into (sorted-map)))))
      (comment comp-debug store {}))))

(def comp-portal (create-comp :portal render))
