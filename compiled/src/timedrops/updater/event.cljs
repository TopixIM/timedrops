
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
           {:time op-time, :id op-id, :text op-data}))))
   (assoc :base-time op-time)
   (assoc :router [:portal nil])))

(defn rm [db op-data op-id op-time]
  (-> db
   (update :events (fn [events] (dissoc events op-data)))
   (assoc :router [:portal nil])))
