
(ns timedrops.util.id)

(defn get-id! [] (.valueOf (js/Date.)))
