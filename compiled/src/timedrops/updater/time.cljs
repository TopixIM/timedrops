
(ns timedrops.updater.time)

(defn tick [db op-data op-id op-time] (assoc db :now op-time))