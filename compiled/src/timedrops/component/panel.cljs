
(ns timedrops.component.panel
  (:require [respo.alias :refer [create-comp div span button]]
            [hsl.core :refer [hsl]]
            [timedrops.util.text :refer [space]]))

(def style-panel {:padding "8px 8px"})

(def style-button
 {:line-height 2,
  :color (hsl 0 0 100),
  :font-size "14px",
  :background-color (hsl 200 70 80),
  :padding "0 8px",
  :outline "none",
  :border "none",
  :margin "4px"})

(def style-more
 {:line-height 1.6,
  :color (hsl 0 0 100),
  :font-size "14px",
  :background-color (hsl 0 0 50),
  :padding "0 12px",
  :outline "none",
  :border "none",
  :margin "4px 8px"})

(defn handle-add [content]
  (fn [e dispatch] (dispatch :event/add content)))

(defn handle-write [e dispatch]
  (dispatch :router/navigate [:writer nil]))

(defn render-entry [content]
  (button
    {:style style-button,
     :event {:click (handle-add content)},
     :attrs {:inner-text content}}))

(defn render []
  (fn [state mutate]
    (div
      {:style style-panel}
      (render-entry "吃饭")
      (render-entry "吃完")
      (render-entry "出发")
      (render-entry "到达")
      (render-entry "休息")
      (render-entry "工作")
      (render-entry "代码")
      (button
        {:style style-more,
         :event {:click handle-write},
         :attrs {:inner-text "Write it!"}}))))

(def comp-panel (create-comp :panel render))
