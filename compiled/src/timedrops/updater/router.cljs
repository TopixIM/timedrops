
(ns timedrops.updater.router)

(defn navigate [db op-data op-id op-time]
  (-> db (assoc :router op-data)))
