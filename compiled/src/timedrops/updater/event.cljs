
(ns timedrops.updater.event
  (:require [timedrops.schema :as schema]))

(defn add [db op-data op-id op-time]
  (-> db
   (update
     :events
     (fn [events]
       (assoc
         events
         op-id
         (merge
           schema/event
           {:time op-time, :id op-id, :text op-data}))))))