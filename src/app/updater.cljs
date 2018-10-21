
(ns app.updater
  (:require [app.updater.session :as session]
            [app.updater.user :as user]
            [app.updater.router :as router]
            [app.schema :as schema]
            [app.updater.timedrop :as timedrop]
            [respo-message.updater :refer [update-messages]]))

(defn updater [db op op-data sid op-id op-time]
  (let [f (case op
            :session/connect session/connect
            :session/disconnect session/disconnect
            :session/remove-message session/remove-message
            :user/log-in user/log-in
            :user/sign-up user/sign-up
            :user/log-out user/log-out
            :router/change router/change
            :timedrop/create-one timedrop/create-one
            :timedrop/remove-one timedrop/remove-one
            (do (println "Unknown op:" op) identity))]
    (f db op-data sid op-id op-time)))
