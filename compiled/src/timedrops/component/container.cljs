
(ns timedrops.component.container
  (:require [hsl.core :refer [hsl]]
            [respo.alias :refer [create-comp div span button]]
            [respo.component.debug :refer [comp-debug]]
            [timedrops.component.portal :refer [comp-portal]]
            [timedrops.component.writer :refer [comp-writer]]
            [timedrops.component.editor :refer [comp-editor]]
            [timedrops.util.text :refer [space]]))

(defn handle-back [e dispatch]
  (dispatch :router/navigate [:portal nil]))

(defn render [store]
  (fn [state mutate]
    (div
      {}
      (case
        (first (:router store))
        :portal
        (comp-portal store)
        :writer
        (comp-writer)
        :editor
        (let [event-id (last (:router store))
              event (get-in store [:events event-id])]
          (comp-editor event))
        (div
          {}
          (span
            {:event {:click handle-back},
             :attrs {:inner-text "back to portal"}})))
      (comment comp-debug (:router store) {}))))

(def comp-container (create-comp :container render))
