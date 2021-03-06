
(ns app.config (:require [app.util :refer [get-env!]]))

(def bundle-builds #{"release" "local-bundle"})

(def dev?
  (if (exists? js/window)
    (do ^boolean js/goog.DEBUG)
    (not (contains? bundle-builds (get-env! "mode")))))

(def site
  {:storage-key "workflow-storage",
   :port 11015,
   :title "Timedrops",
   :icon "http://cdn.tiye.me/logo/timedrops.png",
   :dev-ui "http://192.168.99.149:8100/main.css",
   :release-ui "http://cdn.tiye.me/favored-fonts/main.css",
   :cdn-url "http://cdn.tiye.me/timedrops/",
   :cdn-folder "tiye.me:cdn/timedrops",
   :upload-folder "tiye.me:repo/TopixIM/timedrops/",
   :server-folder "tiye.me:servers/timedrops",
   :theme "#eeeeff"})
