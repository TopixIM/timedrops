
(ns timedrops.util.detect)

(defn in-app? []
  (.-matches (.matchMedia js/window "(display-mode: standalone)")))
