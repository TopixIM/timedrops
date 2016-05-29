
(ns timedrops.component.container
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span button]]))

(defn init-state [] 0)

(defn update-state [state] (inc state))

(defn handle-touch [mutate] (fn [e dispatch] (mutate)))

(defn render [store]
  (fn [state mutate]
    (div
      {}
      (span
        {:style
         {:font-size "60px",
          :font-weight "lighter",
          :display "inline-block",
          :font-family "Helvetica Neue",
          :margin "32px 24px"},
         :attrs {:inner-text "App is running!"}})
      (button
        {:style
         {:color "white",
          :font-size "24px",
          :background-color (hsl 250 90 70),
          :display "inline-block",
          :border "none"},
         :event {:click (handle-touch mutate)},
         :attrs {:inner-text (str "count:" state)}}))))

(def comp-container
 (create-comp :container init-state update-state render))
