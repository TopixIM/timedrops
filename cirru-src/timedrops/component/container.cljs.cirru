
ns timedrops.component.container $ :require
  [] hsl.core :refer $ [] hsl
  [] respo.alias :refer $ [] create-comp div span

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

def comp-container $ create-comp :container render
