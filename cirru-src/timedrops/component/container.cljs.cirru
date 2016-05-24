
ns timedrops.component.container $ :require
  [] hsl.core :refer $ [] hsl
  [] respo.alias :refer $ [] create-comp div span button

defn init-state ()
  , 0

defn update-state (state)
  inc state

defn handle-touch (mutate)
  fn (e dispatch)
    mutate

defn render (store)
  fn (state mutate)
    div ({})
      span $ {}
        :style $ {} (:font-size |60px)
          :font-family "|Helvetica Neue"
          :font-weight |lighter
          :margin "|32px 24px"
          :display |inline-block
        :attrs $ {} :inner-text "|App is running!"

      button $ {}
        :style $ {} (:font-size |24px)
          :display |inline-block
          :border |none
          :background-color $ hsl 250 90 70
          :color |white
        :attrs $ {} :inner-text (str |count: state)
        :event $ {} :click (handle-touch mutate)

def comp-container $ create-comp :container init-state update-state render
