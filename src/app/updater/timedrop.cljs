
(ns app.updater.timedrop (:require [app.schema :as schema]))

(defn create-one [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (assoc-in
     db
     [:timedrops op-id]
     (merge schema/timedrop op-data {:id op-id, :author-id user-id}))))

(defn remove-one [db op-data sid op-id op-time]
  (update db :timedrops (fn [timedrops] (dissoc timedrops op-data))))
