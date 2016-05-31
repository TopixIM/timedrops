
(ns timedrops.updater.time)

(defn rebase [db op-data op-id op-time]
  (let [event (get-in db [:events op-data])]
    (assoc db :base-time (:time event))))
