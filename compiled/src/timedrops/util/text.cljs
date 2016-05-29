
(ns timedrops.util.text
  (:require [respo.alias :refer [span div]]))

(defn text [x] (span {:attrs {:inner-text x}}))

(defn space [w h]
  (if (some? w)
    (div
      {:style
       {:min-height "10px",
        :width (str w "px"),
        :display "inline-block"}})
    (div
      {:style
       {:min-width "10px",
        :display "inline-block",
        :height (str h "px")}})))
