
(ns timedrops.updater.core
  (:require [timedrops.updater.time :as time]
            [timedrops.updater.event :as event]
            [timedrops.updater.router :as router]))

(defn updater [db op op-data op-id op-time]
  (case
    op
    :event/add
    (event/add db op-data op-id op-time)
    :event/remove
    (event/rm db op-data op-id op-time)
    :time/rebase
    (time/rebase db op-data op-id op-time)
    :router/navigate
    (router/navigate db op-data op-id op-time)
    db))
