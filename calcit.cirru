
{} (:package |app)
  :configs $ {} (:init-fn |app.client/main!) (:port 6001) (:reload-fn |app.client/reload!) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |alerts.calcit/ |respo-feather.calcit/
  :entries $ {}
    :server $ {} (:init-fn |app.server/main!) (:port 6001) (:reload-fn |app.server/reload!) (:storage-key |calcit.cirru)
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit.std/ |calcit-wss/
  :files $ {}
    |app.client $ %{} :FileEntry
      :defs $ {}
        |*states $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |*states)
              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |{})
                  |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:states)
                      |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |[])
        |*store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |*store)
              |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |nil)
        |connect! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |connect!)
              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |url-obj)
                          |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |url-parse)
                              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |js/location.href)
                              |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |true)
                      |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |host)
                          |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |either)
                              |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |->)
                                  |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |url-obj)
                                  |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |.-query)
                                  |v $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |.-host)
                              |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |js/location.hostname)
                      |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |port)
                          |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |either)
                              |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |->)
                                  |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |url-obj)
                                  |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |.-query)
                                  |v $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |.-port)
                              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:port)
                                  |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                      |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"ws://")
                          |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |host)
                          |v $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\":")
                          |x $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |port)
                      |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:on-open)
                              |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |event)
                                  |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |simulate-login!)
                          |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:on-close)
                              |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |event)
                                  |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |reset!)
                                      |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |*store)
                                      |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |nil)
                                  |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |js/console.error)
                                      |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"Lost connection!")
                          |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:on-data)
                              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |on-server-data)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629833292217) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |dispatch!)
              |r $ %{} :Expr (:at 1629833292217) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |op)
              |v $ %{} :Expr (:at 1629833292217) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |when)
                  |j $ %{} :Expr (:at 1629833292217) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |and)
                      |j $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Expr (:at 1629833292217) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |not=)
                          |j $ %{} :Expr (:at 1696788635737) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1696788637681) (:by |B1y7Rc-Zz) (:text |nth)
                              |T $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |op)
                              |b $ %{} :Leaf (:at 1696788638311) (:by |B1y7Rc-Zz) (:text |0)
                          |r $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |:states)
                  |r $ %{} :Expr (:at 1629833292217) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696788644982) (:by |B1y7Rc-Zz) (:text |js/console.log)
                      |j $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text "|\"Dispatch")
                      |r $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |op)
              |x $ %{} :Expr (:at 1629833292217) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696788648093) (:by |B1y7Rc-Zz) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |op)
                  |v $ %{} :Expr (:at 1629833292217) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696788658050) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |:states)
                          |b $ %{} :Leaf (:at 1696788659468) (:by |B1y7Rc-Zz) (:text |cursor)
                          |h $ %{} :Leaf (:at 1696788659709) (:by |B1y7Rc-Zz) (:text |s)
                      |j $ %{} :Expr (:at 1629833292217) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |reset!)
                          |j $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |*states)
                          |r $ %{} :Expr (:at 1629833292217) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |update-states)
                              |j $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |@*states)
                              |r $ %{} :Leaf (:at 1696788661798) (:by |B1y7Rc-Zz) (:text |cursor)
                              |t $ %{} :Leaf (:at 1696788662186) (:by |B1y7Rc-Zz) (:text |s)
                  |x $ %{} :Expr (:at 1629833292217) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696788657433) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |:effect/connect)
                      |j $ %{} :Expr (:at 1629833292217) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629833292217) (:by |B1y7Rc-Zz) (:text |connect!)
                  |y $ %{} :Expr (:at 1696788651170) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696788651885) (:by |B1y7Rc-Zz) (:text |_)
                      |b $ %{} :Expr (:at 1696788652397) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788652397) (:by |B1y7Rc-Zz) (:text |ws-send!)
                          |b $ %{} :Leaf (:at 1696788656119) (:by |B1y7Rc-Zz) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |main!)
              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"release")
              |x $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |render-app!)
              |y $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |connect!)
              |yT $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |*store)
                  |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:changes)
                  |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |store)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |prev)
                      |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |render-app!)
              |yj $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |*states)
                  |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:changes)
                  |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |states)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |prev)
                      |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |render-app!)
              |yr $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |on-page-touch)
                  |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |if)
                          |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |nil?)
                              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |@*store)
                          |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |connect!)
              |yv $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"App started!")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |mount-target)
              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |j $ %{} :Leaf (:at 1696788867470) (:by |B1y7Rc-Zz) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\".app")
        |on-server-data $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |on-server-data)
              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |data)
              |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696788690929) (:by |B1y7Rc-Zz) (:text |tag-match)
                  |f $ %{} :Leaf (:at 1696788692823) (:by |B1y7Rc-Zz) (:text |data)
                  |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696788696494) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:patch)
                          |b $ %{} :Leaf (:at 1696788701306) (:by |B1y7Rc-Zz) (:text |changes)
                      |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788705269) (:by |B1y7Rc-Zz) (:text |do)
                          |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |when)
                              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |config/dev?)
                              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |js/console.log)
                                  |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"Changes")
                                  |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |changes)
                          |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |reset!)
                              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |*store)
                              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |patch-twig)
                                  |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |@*store)
                                  |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |changes)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |reload!)
              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |or)
                      |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |client-errors)
                      |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |server-errors)
                  |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |hud!)
                      |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"error")
                      |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |client-errors)
                          |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |&newline)
                          |v $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |server-errors)
                  |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |do)
                      |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |hud!)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"inactive")
                          |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |nil)
                      |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |*store)
                          |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:changes)
                      |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |*states)
                          |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:changes)
                      |x $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |clear-cache!)
                      |y $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |yT $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |*store)
                          |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:changes)
                          |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |store)
                                  |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |prev)
                              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |yj $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |*states)
                          |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:changes)
                          |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |states)
                                  |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |prev)
                              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |yr $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"Code updated.")
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |render-app!)
              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |render!)
                  |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |mount-target)
                  |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |comp-container)
                      |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:states)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |@*states)
                      |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |@*store)
                  |v $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |dispatch!)
        |simulate-login! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |simulate-login!)
              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |raw)
                          |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |.!getItem)
                              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |js/localStorage)
                              |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |raw)
                      |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |do)
                          |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |println)
                              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"Found storage.")
                          |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |dispatch!)
                              |r $ %{} :Expr (:at 1696788679456) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1696788679987) (:by |B1y7Rc-Zz) (:text |::)
                                  |L $ %{} :Leaf (:at 1696788680340) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                                  |T $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                      |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |raw)
                      |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |do)
                          |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |println)
                              |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"Found no storage.")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
          :data $ {}
            |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |ns)
            |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |app.client)
            |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:require)
                |j $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |render!)
                        |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |clear-cache!)
                        |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |realize-ssr!)
                |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |respo.cursor)
                    |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |update-states)
                |v $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |app.comp.container)
                    |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |comp-container)
                |x $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |app.schema)
                    |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:as)
                    |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |schema)
                |y $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |app.config)
                    |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:as)
                    |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |config)
                |yT $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |ws-edn.client)
                    |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                        |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |ws-send!)
                |yj $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |recollect.patch)
                    |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |patch-twig)
                |yr $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |cumulo-util.core)
                    |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |on-page-touch)
                |yv $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"url-parse")
                    |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |url-parse)
                |yx $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |hud!)
                |yy $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |client-errors)
                |yyT $ %{} :Expr (:at 1629831836675) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text "|\"../js-out/calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629831836675) (:by |B1y7Rc-Zz) (:text |server-errors)
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:data)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |session)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:session)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                      |r $ %{} :Expr (:at 1525106928554) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1525106929232) (:by |root) (:text |router)
                          |j $ %{} :Expr (:at 1525106929915) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1525106930860) (:by |root) (:text |:router)
                              |j $ %{} :Leaf (:at 1525106931558) (:by |root) (:text |store)
                      |v $ %{} :Expr (:at 1525106933346) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1525106935393) (:by |root) (:text |router-data)
                          |j $ %{} :Expr (:at 1525106935675) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1525106936827) (:by |root) (:text |:data)
                              |j $ %{} :Leaf (:at 1525106937665) (:by |root) (:text |router)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil?)
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                      |r $ %{} :Expr (:at 1521951403873) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521951417580) (:by |root) (:text |comp-offline)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |merge)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/global)
                                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/fullscreen)
                                      |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/column)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523120265747) (:by |root) (:text |comp-navigation)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1523120353961) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523120357277) (:by |root) (:text |:count)
                                  |j $ %{} :Leaf (:at 1523120358953) (:by |root) (:text |store)
                          |v $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |case)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |router)
                                  |n $ %{} :Expr (:at 1525106918943) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525106921967) (:by |root) (:text |:home)
                                      |j $ %{} :Expr (:at 1539195346168) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540103781887) (:by |root) (:text |comp-dashboard)
                                          |f $ %{} :Leaf (:at 1540104146564) (:by |root) (:text |states)
                                          |r $ %{} :Leaf (:at 1540103747296) (:by |root) (:text |router-data)
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:profile)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                          |r $ %{} :Expr (:at 1524070838527) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070840507) (:by |root) (:text |:data)
                                              |j $ %{} :Leaf (:at 1524070841286) (:by |root) (:text |router)
                                  |x $ %{} :Expr (:at 1525106913773) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1525106915016) (:by |root) (:text |<>)
                                      |j $ %{} :Leaf (:at 1525106916644) (:by |root) (:text |router)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                          |w $ %{} :Expr (:at 1524279203814) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524279211924) (:by |root) (:text |comp-status-color)
                              |j $ %{} :Expr (:at 1524279213788) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524279214588) (:by |root) (:text |:color)
                                  |j $ %{} :Leaf (:at 1524279215366) (:by |root) (:text |store)
                          |x $ %{} :Expr (:at 1521911488967) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521911509225) (:by |root) (:text |when)
                              |L $ %{} :Leaf (:at 1521911495407) (:by |root) (:text |dev?)
                              |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Store)
                                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:bottom)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |0)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:left)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |0)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:max-width)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||100%)
                          |y $ %{} :Expr (:at 1629833071417) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629833071417) (:by |B1y7Rc-Zz) (:text |comp-messages)
                              |j $ %{} :Expr (:at 1629833071417) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629833071417) (:by |B1y7Rc-Zz) (:text |get-in)
                                  |j $ %{} :Leaf (:at 1629833071417) (:by |B1y7Rc-Zz) (:text |store)
                                  |r $ %{} :Expr (:at 1629833071417) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629833071417) (:by |B1y7Rc-Zz) (:text |[])
                                      |j $ %{} :Leaf (:at 1629833071417) (:by |B1y7Rc-Zz) (:text |:session)
                                      |r $ %{} :Leaf (:at 1629833071417) (:by |B1y7Rc-Zz) (:text |:messages)
                              |r $ %{} :Expr (:at 1629833071417) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629833071417) (:by |B1y7Rc-Zz) (:text |{})
                              |v $ %{} :Expr (:at 1629833071417) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629833071417) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629833071417) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629833071417) (:by |B1y7Rc-Zz) (:text |info)
                                      |j $ %{} :Leaf (:at 1629833071417) (:by |B1y7Rc-Zz) (:text |d!)
                                  |r $ %{} :Expr (:at 1629833071417) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629833071417) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1629833071417) (:by |B1y7Rc-Zz) (:text |:session/remove-message)
                                      |r $ %{} :Leaf (:at 1629833071417) (:by |B1y7Rc-Zz) (:text |info)
                          |yT $ %{} :Expr (:at 1521911502552) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521911507241) (:by |root) (:text |when)
                              |L $ %{} :Leaf (:at 1521911504664) (:by |root) (:text |dev?)
                              |T $ %{} :Expr (:at 1507828710405) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507828712159) (:by |root) (:text |comp-reel)
                                  |j $ %{} :Expr (:at 1507829101137) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507830262253) (:by |root) (:text |:reel-length)
                                      |j $ %{} :Leaf (:at 1507829104010) (:by |root) (:text |store)
                                  |r $ %{} :Expr (:at 1507828721052) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507828722268) (:by |root) (:text |{})
        |comp-offline $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |defcomp)
              |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |comp-offline)
              |r $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |div)
                  |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |{})
                      |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:style)
                          |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |merge)
                              |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |ui/global)
                              |r $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |ui/fullscreen)
                              |v $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |ui/column-dispersive)
                              |x $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:background-color)
                                      |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:theme)
                                          |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |0)
                  |v $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:background-image)
                                      |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |str)
                                          |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text "|\"url(")
                                          |r $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:icon)
                                              |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |config/site)
                                          |v $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text "|\")")
                                  |r $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:width)
                                      |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |128)
                                  |v $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |128)
                                  |x $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:background-size)
                                      |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:contain)
                  |x $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:pointer)
                                  |r $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:line-height)
                                      |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text "|\"32px")
                          |r $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:on-click)
                              |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |d!)
                                  |r $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:effect/connect)
                                      |r $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |nil)
                      |r $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |<>)
                          |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text "|\"No connection...")
                          |r $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:font-family)
                                  |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                              |r $ %{} :Expr (:at 1629831985879) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |:font-size)
                                  |j $ %{} :Leaf (:at 1629831985879) (:by |B1y7Rc-Zz) (:text |24)
        |comp-status-color $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1524279216692) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1524279218316) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1524279216692) (:by |root) (:text |comp-status-color)
              |r $ %{} :Expr (:at 1524279216692) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524279220380) (:by |root) (:text |color)
              |v $ %{} :Expr (:at 1524279221052) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524279221503) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1524279221753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524279222145) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1524279222434) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524279223333) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1533835122554) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1533835132715) (:by |B1y7Rc-Zz) (:text |let)
                              |L $ %{} :Expr (:at 1533835132973) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1533835133406) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533835134066) (:by |B1y7Rc-Zz) (:text |size)
                                      |j $ %{} :Leaf (:at 1533835156000) (:by |B1y7Rc-Zz) (:text |24)
                              |T $ %{} :Expr (:at 1524279223555) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524279223903) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1524279224175) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279228958) (:by |root) (:text |:width)
                                      |j $ %{} :Leaf (:at 1533835137743) (:by |B1y7Rc-Zz) (:text |size)
                                  |r $ %{} :Expr (:at 1524279231457) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279232432) (:by |root) (:text |:height)
                                      |j $ %{} :Leaf (:at 1533835138984) (:by |B1y7Rc-Zz) (:text |size)
                                  |v $ %{} :Expr (:at 1524279233724) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1524279242067) (:by |root) (:text |:position)
                                      |T $ %{} :Leaf (:at 1524279236076) (:by |root) (:text |:absolute)
                                  |x $ %{} :Expr (:at 1524279242693) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533835259111) (:by |B1y7Rc-Zz) (:text |:bottom)
                                      |j $ %{} :Leaf (:at 1524279295251) (:by |root) (:text |60)
                                  |y $ %{} :Expr (:at 1524279244626) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533835114388) (:by |B1y7Rc-Zz) (:text |:left)
                                      |j $ %{} :Leaf (:at 1524279252706) (:by |root) (:text |8)
                                  |yT $ %{} :Expr (:at 1524279259074) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279265891) (:by |root) (:text |:background-color)
                                      |j $ %{} :Leaf (:at 1524279319762) (:by |root) (:text |color)
                                  |yj $ %{} :Expr (:at 1524279300007) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279306393) (:by |root) (:text |:border-radius)
                                      |j $ %{} :Leaf (:at 1533835148624) (:by |B1y7Rc-Zz) (:text "|\"50%")
                                  |yr $ %{} :Expr (:at 1524279322054) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279323711) (:by |root) (:text |:opacity)
                                      |j $ %{} :Leaf (:at 1533835161153) (:by |B1y7Rc-Zz) (:text |0.6)
                                  |yv $ %{} :Expr (:at 1533835167955) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533835177358) (:by |B1y7Rc-Zz) (:text |:pointer-events)
                                      |j $ %{} :Leaf (:at 1533835178211) (:by |B1y7Rc-Zz) (:text |:none)
        |style-body $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |style-body)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:padding)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||8px 16px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547378489) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |xT $ %{} :Leaf (:at 1521951311501) (:by |root) (:text |action->)
                        |xj $ %{} :Leaf (:at 1528132593470) (:by |root) (:text |cursor->)
                        |y $ %{} :Leaf (:at 1507815955483) (:by |root) (:text |button)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |yD $ %{} :Expr (:at 1507816109319) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507816109737) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1507816117447) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507816112686) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507816113982) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507816114106) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507816114704) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1523120275079) (:by |root) (:text |app.comp.navigation)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1523120276563) (:by |root) (:text |comp-navigation)
                |yj $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.profile)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                |yr $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.login)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                |yv $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1529230826824) (:by |root) (:text |respo-message.comp.messages)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1529230829559) (:by |root) (:text |comp-messages)
                |yx $ %{} :Expr (:at 1507828725931) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507828726338) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1544118784873) (:by |B1y7Rc-Zz) (:text |cumulo-reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507828731528) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507828731735) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1507828731987) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1507828733743) (:by |root) (:text |comp-reel)
                |yy $ %{} :Expr (:at 1521911479054) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1521911480104) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527789167264) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1521911483589) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521911483778) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1521911483935) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1521911485489) (:by |root) (:text |dev?)
                |yyj $ %{} :Expr (:at 1529230793085) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1529230793389) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1529230796079) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1529230796499) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1529230797248) (:by |root) (:text |schema)
                |yyr $ %{} :Expr (:at 1535564714854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1535564716963) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1535564718729) (:by |B1y7Rc-Zz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1535564719687) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1535564721387) (:by |B1y7Rc-Zz) (:text |config)
                |yyv $ %{} :Expr (:at 1540103767749) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540103767749) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540103767749) (:by |root) (:text |app.comp.dashboard)
                    |r $ %{} :Leaf (:at 1540103767749) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540103767749) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540103767749) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1540103767749) (:by |root) (:text |comp-dashboard)
    |app.comp.dashboard $ %{} :FileEntry
      :defs $ {}
        |comp-dashboard $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-dashboard)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at 1540104150689) (:by |root) (:text |states)
                  |T $ %{} :Leaf (:at 1540103820139) (:by |root) (:text |timedrops)
              |v $ %{} :Expr (:at 1540104162976) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1540104164771) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1540104164993) (:by |root)
                    :data $ {}
                      |D $ %{} :Expr (:at 1629832593755) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832595390) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1629832596581) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832598236) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1629832600404) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1540104165156) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540104165707) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1540104167090) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540104165985) (:by |root) (:text |or)
                              |j $ %{} :Expr (:at 1540104167748) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540104168344) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1540104169980) (:by |root) (:text |states)
                              |r $ %{} :Expr (:at 1540104170448) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540104171031) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1540104171322) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832454165) (:by |B1y7Rc-Zz) (:text |:pop?)
                                      |j $ %{} :Leaf (:at 1540104176608) (:by |root) (:text |false)
                                  |r $ %{} :Expr (:at 1540104177776) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540104178832) (:by |root) (:text |:draft)
                                      |j $ %{} :Leaf (:at 1540104179757) (:by |root) (:text "|\"")
                                  |v $ %{} :Expr (:at 1540104328351) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540104329732) (:by |root) (:text |:time)
                                      |j $ %{} :Leaf (:at 1540104330364) (:by |root) (:text |nil)
                  |T $ %{} :Expr (:at 1540103724960) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540103725436) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1540103725671) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540103726076) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1540103892379) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540103893070) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1540103893341) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540103894043) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1540103894383) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540103896596) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1540103903623) (:by |root) (:text |16)
                      |v $ %{} :Expr (:at 1540103992299) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540103993341) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1540103993589) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540103993917) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1540103994351) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540103995693) (:by |root) (:text |button)
                              |j $ %{} :Expr (:at 1540103995939) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540103996279) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1540103996689) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540103997420) (:by |root) (:text |:style)
                                      |j $ %{} :Leaf (:at 1540103999978) (:by |root) (:text |ui/button)
                                  |r $ %{} :Expr (:at 1540104001907) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540104006687) (:by |root) (:text |:inner-text)
                                      |j $ %{} :Leaf (:at 1540106700943) (:by |root) (:text "|\"Drop")
                                  |v $ %{} :Expr (:at 1540104016094) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540104017464) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1540104017716) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540104017963) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1540104018214) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1540104018448) (:by |root) (:text |e)
                                              |j $ %{} :Leaf (:at 1540104019254) (:by |root) (:text |d!)
                                          |r $ %{} :Expr (:at 1540104293802) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629833107623) (:by |B1y7Rc-Zz) (:text |d!)
                                              |b $ %{} :Leaf (:at 1629833109429) (:by |B1y7Rc-Zz) (:text |cursor)
                                              |j $ %{} :Expr (:at 1540104335774) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1540104335774) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1540104335774) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629833404097) (:by |B1y7Rc-Zz) (:text |:pop?)
                                                      |j $ %{} :Leaf (:at 1540104335774) (:by |root) (:text |true)
                                                  |r $ %{} :Expr (:at 1540104335774) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1540104335774) (:by |root) (:text |:draft)
                                                      |j $ %{} :Leaf (:at 1540104335774) (:by |root) (:text "|\"")
                                                  |v $ %{} :Expr (:at 1540104335774) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1540104335774) (:by |root) (:text |:time)
                                                      |j $ %{} :Expr (:at 1540104338256) (:by |root)
                                                        :data $ {}
                                                          |j $ %{} :Leaf (:at 1629833160769) (:by |B1y7Rc-Zz) (:text |js/Date.now)
                                          |v $ %{} :Expr (:at 1540105920836) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1696788977413) (:by |B1y7Rc-Zz) (:text |flipped)
                                              |T $ %{} :Leaf (:at 1540105924092) (:by |root) (:text |js/setTimeout)
                                              |X $ %{} :Leaf (:at 1696788979465) (:by |B1y7Rc-Zz) (:text |200)
                                              |b $ %{} :Expr (:at 1540105929098) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1540105928840) (:by |root) (:text |fn)
                                                  |j $ %{} :Expr (:at 1540105929717) (:by |root)
                                                    :data $ {}
                                                  |r $ %{} :Expr (:at 1540105930654) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1540105933269) (:by |root) (:text |let)
                                                      |j $ %{} :Expr (:at 1540105933703) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1540105933941) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1540105936173) (:by |root) (:text |target)
                                                              |j $ %{} :Expr (:at 1540105936589) (:by |root)
                                                                :data $ {}
                                                                  |j $ %{} :Leaf (:at 1629833252235) (:by |B1y7Rc-Zz) (:text |js/document.querySelector)
                                                                  |r $ %{} :Leaf (:at 1540105943193) (:by |root) (:text "|\".input")
                                                      |r $ %{} :Expr (:at 1629833229970) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1629833230550) (:by |B1y7Rc-Zz) (:text |if)
                                                          |L $ %{} :Expr (:at 1629833231330) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629833232375) (:by |B1y7Rc-Zz) (:text |some?)
                                                              |j $ %{} :Leaf (:at 1629833234105) (:by |B1y7Rc-Zz) (:text |target)
                                                          |T $ %{} :Expr (:at 1540105944724) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629833237946) (:by |B1y7Rc-Zz) (:text |.!focus)
                                                              |j $ %{} :Leaf (:at 1540105948091) (:by |root) (:text |target)
                                                          |j $ %{} :Expr (:at 1629833238441) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629833242922) (:by |B1y7Rc-Zz) (:text |js/console.warn)
                                                              |j $ %{} :Leaf (:at 1629833247623) (:by |B1y7Rc-Zz) (:text "|\"Unknown target")
                      |x $ %{} :Expr (:at 1540104029801) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540104030342) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1540104031342) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1540104138097) (:by |root) (:text |16)
                      |xT $ %{} :Expr (:at 1540105047522) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540105050579) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1540105053331) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540105054755) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1540105055716) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1629832294107) (:by |B1y7Rc-Zz) (:text |->)
                              |T $ %{} :Leaf (:at 1540105059592) (:by |root) (:text |timedrops)
                              |X $ %{} :Expr (:at 1629832364419) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832365487) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |b $ %{} :Expr (:at 1540106000285) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832366679) (:by |B1y7Rc-Zz) (:text |.sort-by)
                                  |j $ %{} :Expr (:at 1540106004013) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540106004334) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1540106004800) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832363082) (:by |B1y7Rc-Zz) (:text |pair)
                                      |r $ %{} :Expr (:at 1540106008452) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832369238) (:by |B1y7Rc-Zz) (:text |negate)
                                          |j $ %{} :Expr (:at 1540106012802) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1540106013361) (:by |root) (:text |:time)
                                              |j $ %{} :Expr (:at 1629832358242) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832358913) (:by |B1y7Rc-Zz) (:text |last)
                                                  |j $ %{} :Leaf (:at 1629832360269) (:by |B1y7Rc-Zz) (:text |pair)
                              |j $ %{} :Expr (:at 1540105061837) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832373456) (:by |B1y7Rc-Zz) (:text |.map-pair)
                                  |j $ %{} :Expr (:at 1540105065174) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540105065419) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1540105066477) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629832375488) (:by |B1y7Rc-Zz) (:text |k)
                                          |T $ %{} :Leaf (:at 1540105070391) (:by |root) (:text |timedrop)
                                      |r $ %{} :Expr (:at 1629832376477) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629832377151) (:by |B1y7Rc-Zz) (:text |[])
                                          |L $ %{} :Leaf (:at 1629832378148) (:by |B1y7Rc-Zz) (:text |k)
                                          |T $ %{} :Expr (:at 1540105070877) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1540105080154) (:by |root) (:text |comp-timedrop)
                                              |b $ %{} :Expr (:at 1629832024558) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629832025271) (:by |B1y7Rc-Zz) (:text |>>)
                                                  |T $ %{} :Leaf (:at 1540105619659) (:by |root) (:text |states)
                                                  |j $ %{} :Expr (:at 1629832345638) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832345638) (:by |B1y7Rc-Zz) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1629832345638) (:by |B1y7Rc-Zz) (:text |timedrop)
                                              |j $ %{} :Leaf (:at 1540105078201) (:by |root) (:text |timedrop)
                      |xj $ %{} :Expr (:at 1629832439070) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832439070) (:by |B1y7Rc-Zz) (:text |comp-modal)
                          |j $ %{} :Expr (:at 1629832439070) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832439070) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1629832439070) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832439070) (:by |B1y7Rc-Zz) (:text |:title)
                                  |j $ %{} :Leaf (:at 1629832439070) (:by |B1y7Rc-Zz) (:text ||Demo)
                              |r $ %{} :Expr (:at 1629832439070) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832439070) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Expr (:at 1629832439070) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832439070) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1629832439070) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832439070) (:by |B1y7Rc-Zz) (:text |:width)
                                          |j $ %{} :Leaf (:at 1629832439070) (:by |B1y7Rc-Zz) (:text |400)
                              |v $ %{} :Expr (:at 1629832439070) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832439070) (:by |B1y7Rc-Zz) (:text |:container-style)
                                  |j $ %{} :Expr (:at 1629832439070) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832439070) (:by |B1y7Rc-Zz) (:text |{})
                              |x $ %{} :Expr (:at 1629832439070) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832439070) (:by |B1y7Rc-Zz) (:text |:render)
                                  |j $ %{} :Expr (:at 1629832439070) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832439070) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629832439070) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832439070) (:by |B1y7Rc-Zz) (:text |on-close)
                                      |r $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |div)
                                          |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:style)
                                                  |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |{})
                                                      |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:min-width)
                                                          |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |260)
                                          |r $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |<>)
                                              |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |->)
                                                  |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:time)
                                                      |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |state)
                                                  |r $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |dayjs)
                                                  |v $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696788987905) (:by |B1y7Rc-Zz) (:text |.!format)
                                                      |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text "|\"MM-DD HH:mm:ss")
                                              |r $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |{})
                                                  |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:font-size)
                                                      |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |24)
                                                  |r $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:font-family)
                                                      |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                                          |v $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |div)
                                              |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |{})
                                              |r $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |input)
                                                  |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |{})
                                                      |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:class-name)
                                                          |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text "|\"input")
                                                      |r $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:style)
                                                          |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |merge)
                                                              |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |ui/input)
                                                              |r $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |{})
                                                                  |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:width)
                                                                      |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text "|\"100%")
                                                      |v $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:value)
                                                          |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:draft)
                                                              |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |state)
                                                      |x $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:placeholder)
                                                          |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text "|\"Some notes")
                                                      |y $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:on-input)
                                                          |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |fn)
                                                              |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |e)
                                                                  |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |d!)
                                                              |r $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |d!)
                                                                  |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |cursor)
                                                                  |r $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |assoc)
                                                                      |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |state)
                                                                      |r $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:draft)
                                                                      |v $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:value)
                                                                          |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |e)
                                          |x $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |=<)
                                              |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |nil)
                                              |r $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |8)
                                          |y $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |div)
                                              |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |{})
                                                  |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:style)
                                                      |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |ui/row-parted)
                                              |r $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |span)
                                                  |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |{})
                                              |v $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |button)
                                                  |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |{})
                                                      |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:style)
                                                          |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |ui/button)
                                                      |r $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                                          |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text "|\"Submit")
                                                      |v $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:on-click)
                                                          |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |fn)
                                                              |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |e)
                                                                  |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |d!)
                                                              |p $ %{} :Expr (:at 1629832489490) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629833483841) (:by |B1y7Rc-Zz) (:text |on-close)
                                                                  |j $ %{} :Leaf (:at 1629833485926) (:by |B1y7Rc-Zz) (:text |d!)
                                                              |v $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |d!)
                                                                  |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:timedrop/create-one)
                                                                  |r $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |{})
                                                                      |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:time)
                                                                          |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:time)
                                                                              |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |state)
                                                                      |r $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:text)
                                                                          |j $ %{} :Expr (:at 1629832476226) (:by |B1y7Rc-Zz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |:draft)
                                                                              |j $ %{} :Leaf (:at 1629832476226) (:by |B1y7Rc-Zz) (:text |state)
                          |r $ %{} :Expr (:at 1629832456660) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832459660) (:by |B1y7Rc-Zz) (:text |:pop?)
                              |j $ %{} :Leaf (:at 1629832461542) (:by |B1y7Rc-Zz) (:text |state)
                          |v $ %{} :Expr (:at 1629832445536) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832445536) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629832445536) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832445536) (:by |B1y7Rc-Zz) (:text |d!)
                              |r $ %{} :Expr (:at 1629832445536) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832445536) (:by |B1y7Rc-Zz) (:text |d!)
                                  |j $ %{} :Leaf (:at 1629832445536) (:by |B1y7Rc-Zz) (:text |cursor)
                                  |r $ %{} :Expr (:at 1629832445536) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832445536) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |j $ %{} :Leaf (:at 1629832445536) (:by |B1y7Rc-Zz) (:text |state)
                                      |r $ %{} :Leaf (:at 1629832463548) (:by |B1y7Rc-Zz) (:text |:pop?)
                                      |v $ %{} :Leaf (:at 1629832445536) (:by |B1y7Rc-Zz) (:text |false)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.dashboard)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547419785) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1524070875244) (:by |root) (:text |list->)
                        |p $ %{} :Leaf (:at 1629832019501) (:by |B1y7Rc-Zz) (:text |>>)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |y $ %{} :Leaf (:at 1529343437918) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1540104662034) (:by |root) (:text |input)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |yj $ %{} :Expr (:at 1527788936196) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788936499) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788937835) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788938747) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788939786) (:by |root) (:text |config)
                |yr $ %{} :Expr (:at 1540104114839) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540104114839) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540104114839) (:by |root) (:text |app.comp.kit)
                    |r $ %{} :Leaf (:at 1540104114839) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540104114839) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540104114839) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1540104114839) (:by |root) (:text |comp-title)
                |yx $ %{} :Expr (:at 1540104421996) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540104422298) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540104423584) (:by |root) (:text "|\"dayjs")
                    |r $ %{} :Leaf (:at 1629832588190) (:by |B1y7Rc-Zz) (:text |:default)
                    |v $ %{} :Leaf (:at 1540104425607) (:by |root) (:text |dayjs)
                |yy $ %{} :Expr (:at 1540105038125) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540105038125) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540105038125) (:by |root) (:text |app.comp.timedrop)
                    |r $ %{} :Leaf (:at 1540105038125) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540105038125) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540105038125) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1540105038125) (:by |root) (:text |comp-timedrop)
                |yyj $ %{} :Expr (:at 1629832420822) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629832424372) (:by |B1y7Rc-Zz) (:text |respo-alerts.core)
                    |j $ %{} :Leaf (:at 1629832425681) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629832425905) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629832427481) (:by |B1y7Rc-Zz) (:text |comp-modal)
    |app.comp.kit $ %{} :FileEntry
      :defs $ {}
        |comp-title $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1540104050900) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1540104054714) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1540104050900) (:by |root) (:text |comp-title)
              |r $ %{} :Expr (:at 1540104050900) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540104056324) (:by |root) (:text |title)
              |v $ %{} :Expr (:at 1540104056847) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540104060712) (:by |root) (:text |<>)
                  |j $ %{} :Leaf (:at 1540104063425) (:by |root) (:text |title)
                  |r $ %{} :Expr (:at 1540104063663) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540104064008) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1540104064228) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540104082395) (:by |root) (:text |:font-family)
                          |r $ %{} :Leaf (:at 1540104089670) (:by |root) (:text |ui/font-fancy)
                      |r $ %{} :Expr (:at 1540104091198) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540104099573) (:by |root) (:text |:font-size)
                          |j $ %{} :Leaf (:at 1540104100824) (:by |root) (:text |20)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.kit)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547419785) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1524070875244) (:by |root) (:text |list->)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |y $ %{} :Leaf (:at 1529343437918) (:by |root) (:text |button)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |yj $ %{} :Expr (:at 1527788936196) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788936499) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788937835) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788938747) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788939786) (:by |root) (:text |config)
    |app.comp.login $ %{} :FileEntry
      :defs $ {}
        |comp-login $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |defcomp)
              |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |comp-login)
              |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |states)
              |v $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |states)
                      |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |state)
                          |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |or)
                              |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:data)
                                  |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |states)
                              |r $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |initial-state)
                  |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |merge)
                                  |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |ui/flex)
                                  |r $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |ui/center)
                      |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |div)
                          |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |{})
                          |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |div)
                              |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:style)
                                      |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |{})
                              |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |div)
                                  |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |{})
                                  |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |input)
                                      |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:placeholder)
                                              |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text "|\"Username")
                                          |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:value)
                                              |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |state)
                                          |v $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:style)
                                              |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |ui/input)
                                          |x $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:on-input)
                                              |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |assoc)
                                                          |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |state)
                                                          |r $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:username)
                                                          |v $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:value)
                                                              |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |e)
                              |v $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |=<)
                                  |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |nil)
                                  |r $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |8)
                              |x $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |div)
                                  |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |{})
                                  |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |input)
                                      |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:placeholder)
                                              |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text "|\"Password")
                                          |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:value)
                                              |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |state)
                                          |v $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:style)
                                              |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |ui/input)
                                          |x $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:on-input)
                                              |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |assoc)
                                                          |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |state)
                                                          |r $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:password)
                                                          |v $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:value)
                                                              |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |e)
                          |v $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |=<)
                              |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |nil)
                              |r $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |8)
                          |x $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |div)
                              |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:style)
                                      |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:text-align)
                                              |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:right)
                              |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |span)
                                  |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text "|\"Sign up")
                                      |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:style)
                                          |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |merge)
                                              |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |ui/link)
                                      |v $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |on-submit)
                                              |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |state)
                                              |v $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |true)
                              |v $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |=<)
                                  |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |8)
                                  |r $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |nil)
                              |x $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |span)
                                  |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text "|\"Log in")
                                      |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:style)
                                          |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |merge)
                                              |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |ui/link)
                                      |v $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |on-submit)
                                              |j $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Expr (:at 1629832892747) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |state)
                                              |v $ %{} :Leaf (:at 1629832892747) (:by |B1y7Rc-Zz) (:text |false)
        |initial-state $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |initial-state)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||)
        |on-submit $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629832883512) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |on-submit)
              |r $ %{} :Expr (:at 1629832883512) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |username)
                  |j $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |password)
                  |r $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |signup?)
              |v $ %{} :Expr (:at 1629832883512) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |fn)
                  |j $ %{} :Expr (:at 1629832883512) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |e)
                      |j $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |dispatch!)
                  |r $ %{} :Expr (:at 1629832883512) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |dispatch!)
                      |j $ %{} :Expr (:at 1629832883512) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |if)
                          |j $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |signup?)
                          |r $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |:user/sign-up)
                          |v $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                      |r $ %{} :Expr (:at 1629832883512) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |username)
                          |r $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |password)
                  |v $ %{} :Expr (:at 1629832883512) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1696788941145) (:by |B1y7Rc-Zz) (:text |js/localStorage.setItem)
                      |r $ %{} :Expr (:at 1629832883512) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |:storage-key)
                          |j $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |config/site)
                      |v $ %{} :Expr (:at 1629832883512) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                          |j $ %{} :Expr (:at 1629832883512) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |username)
                              |r $ %{} :Leaf (:at 1629832883512) (:by |B1y7Rc-Zz) (:text |password)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1510936619134) (:by |root) (:text |app.comp.login)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                        |y $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547410331) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1519368017028) (:by |root) (:text |app.style)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1519368019779) (:by |root) (:text |style)
                |yj $ %{} :Expr (:at 1527788911549) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788911897) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788913217) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788914516) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788915188) (:by |root) (:text |config)
    |app.comp.navigation $ %{} :FileEntry
      :defs $ {}
        |comp-navigation $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-navigation)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |logged-in?)
                  |j $ %{} :Leaf (:at 1523120365880) (:by |root) (:text |count-members)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |merge)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/row-center)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:height)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |48)
                                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:justify-content)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:space-between)
                                  |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||0 16px")
                                  |y $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |16)
                                  |yT $ %{} :Expr (:at 1519314625999) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519314630138) (:by |root) (:text |:border-bottom)
                                      |j $ %{} :Expr (:at 1519314630743) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519314632214) (:by |root) (:text |str)
                                          |j $ %{} :Leaf (:at 1519314635000) (:by |root) (:text "||1px solid ")
                                          |r $ %{} :Expr (:at 1519314635976) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519314636519) (:by |root) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1519314637558) (:by |root) (:text |0)
                                              |r $ %{} :Leaf (:at 1519314637788) (:by |root) (:text |0)
                                              |v $ %{} :Leaf (:at 1519314638678) (:by |root) (:text |0)
                                              |x $ %{} :Leaf (:at 1519314643853) (:by |root) (:text |0.1)
                                  |yj $ %{} :Expr (:at 1519314651278) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519314653842) (:by |root) (:text |:font-family)
                                      |j $ %{} :Leaf (:at 1519314661374) (:by |root) (:text |ui/font-fancy)
                                  |yv $ %{} :Expr (:at 1540106641871) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540106645485) (:by |root) (:text |:background-color)
                                      |j $ %{} :Expr (:at 1540106645948) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540106649439) (:by |root) (:text |:theme)
                                          |j $ %{} :Leaf (:at 1540106654327) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1514302328636) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1629832001052) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629832002809) (:by |B1y7Rc-Zz) (:text |fn)
                                  |L $ %{} :Expr (:at 1629832003118) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832003391) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1629832004122) (:by |B1y7Rc-Zz) (:text |d!)
                                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832000595) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router/change)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:home)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:pointer)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |j $ %{} :Expr (:at 1536561771096) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536561772481) (:by |B1y7Rc-Zz) (:text |:title)
                              |j $ %{} :Leaf (:at 1536561776186) (:by |B1y7Rc-Zz) (:text |config/site)
                          |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||pointer)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1514302332444) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1629832006784) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629832007424) (:by |B1y7Rc-Zz) (:text |fn)
                                  |L $ %{} :Expr (:at 1629832007701) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832007988) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1629832008688) (:by |B1y7Rc-Zz) (:text |d!)
                                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832006239) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router/change)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:profile)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |logged-in?)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Me)
                              |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Guest)
                      |v $ %{} :Expr (:at 1523120369216) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523120369974) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1523120371053) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1523120371555) (:by |root) (:text |nil)
                      |x $ %{} :Expr (:at 1523120371997) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523120372630) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1523120373023) (:by |root) (:text |count-members)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.navigation)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629831993984) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547394445) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |w $ %{} :Expr (:at 1523120376505) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1523120376949) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1523120379036) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1523120382218) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1523120382545) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1523120382719) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1523120383255) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1521951545529) (:by |root) (:text |action->)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                |y $ %{} :Expr (:at 1536561755369) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1536561755369) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1536561755369) (:by |B1y7Rc-Zz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1536561758845) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1536561761903) (:by |B1y7Rc-Zz) (:text |config)
    |app.comp.profile $ %{} :FileEntry
      :defs $ {}
        |comp-profile $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |user)
                  |j $ %{} :Leaf (:at 1524070827396) (:by |root) (:text |members)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1519314673230) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1519314674218) (:by |root) (:text |merge)
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/flex)
                              |j $ %{} :Expr (:at 1519314674864) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519314675207) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1519314675496) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519314677667) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1519314678341) (:by |root) (:text |16)
                  |r $ %{} :Expr (:at 1524070753023) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1524070753742) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1524070753977) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070754337) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1524070764197) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070764960) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1524070765167) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070765499) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1524070765707) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070768913) (:by |root) (:text |:font-family)
                                      |j $ %{} :Leaf (:at 1524070771373) (:by |root) (:text |ui/font-fancy)
                                  |r $ %{} :Expr (:at 1524070772863) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070774437) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1524070786249) (:by |root) (:text |32)
                                  |v $ %{} :Expr (:at 1524070778614) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070781489) (:by |root) (:text |:font-weight)
                                      |j $ %{} :Leaf (:at 1524070782585) (:by |root) (:text |100)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |str)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||Hello! ")
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |user)
                  |t $ %{} :Expr (:at 1524070801446) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524070803450) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1524070804372) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1524070805591) (:by |root) (:text |16)
                  |u $ %{} :Expr (:at 1524070806586) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524070807601) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1524070807801) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070808172) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1524070882494) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070886268) (:by |root) (:text |:style)
                              |j $ %{} :Leaf (:at 1524070890021) (:by |root) (:text |ui/row)
                      |r $ %{} :Expr (:at 1524070808914) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070810352) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1524070906296) (:by |root) (:text "|\"Members:")
                      |t $ %{} :Expr (:at 1524070907095) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070907693) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1524071002316) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1524070908955) (:by |root) (:text |nil)
                      |v $ %{} :Expr (:at 1524070813822) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070815507) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1524070815884) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070816388) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1524070882494) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070886268) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1524070890021) (:by |root) (:text |ui/row)
                          |r $ %{} :Expr (:at 1524070817648) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832521830) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Leaf (:at 1524070823331) (:by |root) (:text |members)
                              |n $ %{} :Expr (:at 1629832519501) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832520633) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |r $ %{} :Expr (:at 1524070849620) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832524816) (:by |B1y7Rc-Zz) (:text |.map-pair)
                                  |j $ %{} :Expr (:at 1524070854323) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070854836) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1524070855268) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1524070857242) (:by |root) (:text |k)
                                          |j $ %{} :Leaf (:at 1524070860935) (:by |root) (:text |username)
                                      |r $ %{} :Expr (:at 1524070862172) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1524070862624) (:by |root) (:text |[])
                                          |j $ %{} :Leaf (:at 1524070863576) (:by |root) (:text |k)
                                          |r $ %{} :Expr (:at 1524070863870) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070935603) (:by |root) (:text |div)
                                              |b $ %{} :Expr (:at 1524070935915) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524070936321) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1524070941378) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070945311) (:by |root) (:text |:style)
                                                      |j $ %{} :Expr (:at 1524070945552) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1524070951279) (:by |root) (:text |{})
                                                          |j $ %{} :Expr (:at 1524070952343) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524070953379) (:by |root) (:text |:padding)
                                                              |j $ %{} :Leaf (:at 1524070959440) (:by |root) (:text "|\"0 8px")
                                                          |r $ %{} :Expr (:at 1524070965836) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524070967712) (:by |root) (:text |:border)
                                                              |j $ %{} :Expr (:at 1524070968157) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1524070968711) (:by |root) (:text |str)
                                                                  |j $ %{} :Leaf (:at 1524070971580) (:by |root) (:text "|\"1px solid ")
                                                                  |r $ %{} :Expr (:at 1524070972774) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1524070973331) (:by |root) (:text |hsl)
                                                                      |j $ %{} :Leaf (:at 1524070973606) (:by |root) (:text |0)
                                                                      |r $ %{} :Leaf (:at 1524070973793) (:by |root) (:text |0)
                                                                      |v $ %{} :Leaf (:at 1524071006553) (:by |root) (:text |80)
                                                          |v $ %{} :Expr (:at 1524070980253) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524070984655) (:by |root) (:text |:border-radius)
                                                              |j $ %{} :Leaf (:at 1524070992141) (:by |root) (:text "|\"16px")
                                                          |x $ %{} :Expr (:at 1524070994599) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524070996433) (:by |root) (:text |:margin)
                                                              |j $ %{} :Leaf (:at 1524071016063) (:by |root) (:text "|\"0 4px")
                                              |j $ %{} :Expr (:at 1524070937486) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1524070939626) (:by |root) (:text |<>)
                                                  |T $ %{} :Leaf (:at 1524070866665) (:by |root) (:text |username)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                      |v $ %{} :Leaf (:at 1524070799028) (:by |root) (:text |48)
                  |x $ %{} :Expr (:at 1524070749088) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1524070749878) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1524070750119) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070750478) (:by |root) (:text |{})
                      |P $ %{} :Expr (:at 1536750075330) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536750077847) (:by |B1y7Rc-Zz) (:text |button)
                          |j $ %{} :Expr (:at 1536750078116) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536750084550) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1536750084800) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536750086408) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Expr (:at 1536750086649) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536750087218) (:by |B1y7Rc-Zz) (:text |merge)
                                      |j $ %{} :Leaf (:at 1536750089353) (:by |B1y7Rc-Zz) (:text |ui/button)
                              |r $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1536750196752) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1536750149343) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |j $ %{} :Leaf (:at 1629832532140) (:by |B1y7Rc-Zz) (:text |js/location.replace)
                                          |r $ %{} :Expr (:at 1536750157447) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1536750157996) (:by |B1y7Rc-Zz) (:text |str)
                                              |j $ %{} :Leaf (:at 1536947568308) (:by |root) (:text |js/location.origin)
                                              |r $ %{} :Leaf (:at 1536947560142) (:by |root) (:text "|\"?time=")
                                              |v $ %{} :Expr (:at 1536750183293) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1629832536350) (:by |B1y7Rc-Zz) (:text |js/Date.now)
                          |r $ %{} :Expr (:at 1536750090761) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536750091205) (:by |B1y7Rc-Zz) (:text |<>)
                              |j $ %{} :Leaf (:at 1536750096637) (:by |B1y7Rc-Zz) (:text "|\"Refresh")
                      |R $ %{} :Expr (:at 1536750643074) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536750643562) (:by |B1y7Rc-Zz) (:text |=<)
                          |j $ %{} :Leaf (:at 1536750644286) (:by |B1y7Rc-Zz) (:text |8)
                          |r $ %{} :Leaf (:at 1536750644793) (:by |B1y7Rc-Zz) (:text |nil)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529343433304) (:by |root) (:text |button)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                  |b $ %{} :Expr (:at 1529343525553) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1529343526544) (:by |root) (:text |merge)
                                      |T $ %{} :Leaf (:at 1529343448522) (:by |root) (:text |ui/button)
                                      |j $ %{} :Expr (:at 1529343455186) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1529343455629) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1529343457115) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1529343457898) (:by |root) (:text |:color)
                                              |j $ %{} :Leaf (:at 1529343458855) (:by |root) (:text |:red)
                                          |r $ %{} :Expr (:at 1529343459158) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1529343463728) (:by |root) (:text |:border-color)
                                              |j $ %{} :Leaf (:at 1529343464475) (:by |root) (:text |:red)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1514302350497) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521951456454) (:by |root) (:text |fn)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |e)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                                          |r $ %{} :Leaf (:at 1521951461103) (:by |root) (:text |mutate!)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/log-out)
                                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                                      |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |j $ %{} :Leaf (:at 1629832096964) (:by |B1y7Rc-Zz) (:text |js/localStorage.removeItem)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:storage-key)
                                              |j $ %{} :Leaf (:at 1527788933957) (:by |root) (:text |config/site)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                              |r $ %{} :Leaf (:at 1536750140051) (:by |B1y7Rc-Zz) (:text "|\"Log out")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.profile)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629832540881) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547419785) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1524070875244) (:by |root) (:text |list->)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |y $ %{} :Leaf (:at 1529343437918) (:by |root) (:text |button)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |yj $ %{} :Expr (:at 1527788936196) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788936499) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788937835) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788938747) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788939786) (:by |root) (:text |config)
    |app.comp.timedrop $ %{} :FileEntry
      :defs $ {}
        |comp-timedrop $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1540105021039) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1540105023054) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1540105021039) (:by |root) (:text |comp-timedrop)
              |r $ %{} :Expr (:at 1540105021039) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1540105636068) (:by |root) (:text |states)
                  |T $ %{} :Leaf (:at 1540105025335) (:by |root) (:text |timedrop)
              |v $ %{} :Expr (:at 1629832201775) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1629832202993) (:by |B1y7Rc-Zz) (:text |let)
                  |L $ %{} :Expr (:at 1629832203242) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629832203574) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832212906) (:by |B1y7Rc-Zz) (:text |remove-plugin)
                          |j $ %{} :Expr (:at 1629832213189) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832215503) (:by |B1y7Rc-Zz) (:text |use-confirm)
                              |j $ %{} :Expr (:at 1629832215908) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832216295) (:by |B1y7Rc-Zz) (:text |>>)
                                  |j $ %{} :Leaf (:at 1629832218864) (:by |B1y7Rc-Zz) (:text |states)
                                  |r $ %{} :Leaf (:at 1629832222198) (:by |B1y7Rc-Zz) (:text |:remove)
                              |r $ %{} :Expr (:at 1629832223762) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832224081) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629832224376) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832225132) (:by |B1y7Rc-Zz) (:text |:text)
                                      |j $ %{} :Leaf (:at 1629832227732) (:by |B1y7Rc-Zz) (:text "|\"Sure to delete?")
                  |T $ %{} :Expr (:at 1540105026123) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540105026890) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1540105027201) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540105027504) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1540105356345) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540105357164) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1540105437931) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1540105438974) (:by |root) (:text |merge)
                                  |L $ %{} :Leaf (:at 1540105441474) (:by |root) (:text |ui/row-parted)
                                  |T $ %{} :Expr (:at 1540105357941) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540105358327) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1540105358585) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540105364203) (:by |root) (:text |:border-bottom)
                                          |j $ %{} :Expr (:at 1540105367296) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832558876) (:by |B1y7Rc-Zz) (:text |str)
                                              |j $ %{} :Leaf (:at 1629832564715) (:by |B1y7Rc-Zz) (:text "|\"1px solid ")
                                              |r $ %{} :Expr (:at 1629832566225) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832566225) (:by |B1y7Rc-Zz) (:text |hsl)
                                                  |j $ %{} :Leaf (:at 1629832566225) (:by |B1y7Rc-Zz) (:text |0)
                                                  |r $ %{} :Leaf (:at 1629832566225) (:by |B1y7Rc-Zz) (:text |0)
                                                  |v $ %{} :Leaf (:at 1629832566225) (:by |B1y7Rc-Zz) (:text |94)
                                      |r $ %{} :Expr (:at 1540105426250) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540105428248) (:by |root) (:text |:padding)
                                          |j $ %{} :Leaf (:at 1540105430686) (:by |root) (:text "|\"8px 0")
                      |v $ %{} :Expr (:at 1540105152718) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1540105153473) (:by |root) (:text |span)
                          |L $ %{} :Expr (:at 1540105153710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540105154077) (:by |root) (:text |{})
                          |T $ %{} :Expr (:at 1540105117598) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540105118031) (:by |root) (:text |<>)
                              |j $ %{} :Expr (:at 1540105122674) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540105123663) (:by |root) (:text |->)
                                  |j $ %{} :Leaf (:at 1540105127951) (:by |root) (:text |timedrop)
                                  |r $ %{} :Leaf (:at 1540105128673) (:by |root) (:text |:time)
                                  |v $ %{} :Leaf (:at 1540105130271) (:by |root) (:text |dayjs)
                                  |x $ %{} :Expr (:at 1540105131826) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832185810) (:by |B1y7Rc-Zz) (:text |.!format)
                                      |j $ %{} :Leaf (:at 1540105142389) (:by |root) (:text "|\"MM:DD HH:mm:ss")
                              |r $ %{} :Expr (:at 1540106418974) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540106420664) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1540106421117) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540106424224) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1540106426437) (:by |root) (:text |20)
                                  |r $ %{} :Expr (:at 1540106444266) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540106448382) (:by |root) (:text |:font-family)
                                      |j $ %{} :Leaf (:at 1540106452290) (:by |root) (:text |ui/font-fancy)
                          |b $ %{} :Expr (:at 1540105172178) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540105172803) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1540105173802) (:by |root) (:text |8)
                              |r $ %{} :Leaf (:at 1540105174416) (:by |root) (:text |nil)
                          |j $ %{} :Expr (:at 1540105162674) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1540105163248) (:by |root) (:text |<>)
                              |T $ %{} :Expr (:at 1540105239012) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1540105240315) (:by |root) (:text |or)
                                  |T $ %{} :Expr (:at 1540105226683) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1540105227970) (:by |root) (:text |:text)
                                      |T $ %{} :Leaf (:at 1540105160947) (:by |root) (:text |timedrop)
                                  |j $ %{} :Leaf (:at 1540105243527) (:by |root) (:text "|\"checked")
                              |j $ %{} :Expr (:at 1540106429462) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1540106429972) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1540106430307) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540106432220) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1540106436558) (:by |root) (:text |12)
                                  |r $ %{} :Expr (:at 1540106474850) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1540106475755) (:by |root) (:text |:color)
                                      |j $ %{} :Expr (:at 1540106475989) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1540106476304) (:by |root) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1540106476911) (:by |root) (:text |0)
                                          |r $ %{} :Leaf (:at 1540106477298) (:by |root) (:text |0)
                                          |v $ %{} :Leaf (:at 1540106486420) (:by |root) (:text |70)
                      |w $ %{} :Expr (:at 1629832233040) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832233040) (:by |B1y7Rc-Zz) (:text |span)
                          |j $ %{} :Expr (:at 1629832233040) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832233040) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1629832233040) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832233040) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Expr (:at 1629832233040) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832233040) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1629832233040) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832233040) (:by |B1y7Rc-Zz) (:text |:color)
                                          |j $ %{} :Expr (:at 1629832233040) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832233040) (:by |B1y7Rc-Zz) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1629832233040) (:by |B1y7Rc-Zz) (:text |0)
                                              |r $ %{} :Leaf (:at 1629832233040) (:by |B1y7Rc-Zz) (:text |0)
                                              |v $ %{} :Leaf (:at 1629832233040) (:by |B1y7Rc-Zz) (:text |80)
                                      |r $ %{} :Expr (:at 1629833547041) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629833552092) (:by |B1y7Rc-Zz) (:text |:cursor)
                                          |j $ %{} :Leaf (:at 1629833553537) (:by |B1y7Rc-Zz) (:text |:pointer)
                              |r $ %{} :Expr (:at 1629832251122) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832255315) (:by |B1y7Rc-Zz) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1629832255689) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832256634) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629832256939) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832257279) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1629832257850) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1629832263984) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629832264905) (:by |B1y7Rc-Zz) (:text |.show)
                                          |L $ %{} :Leaf (:at 1629832266732) (:by |B1y7Rc-Zz) (:text |remove-plugin)
                                          |P $ %{} :Leaf (:at 1629832267311) (:by |B1y7Rc-Zz) (:text |d!)
                                          |T $ %{} :Expr (:at 1629832268025) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629832269572) (:by |B1y7Rc-Zz) (:text |fn)
                                              |L $ %{} :Expr (:at 1629832269902) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                              |T $ %{} :Expr (:at 1629832262655) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629832262655) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1629832262655) (:by |B1y7Rc-Zz) (:text |:timedrop/remove-one)
                                                  |r $ %{} :Expr (:at 1629832262655) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629832262655) (:by |B1y7Rc-Zz) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1629832262655) (:by |B1y7Rc-Zz) (:text |timedrop)
                          |r $ %{} :Expr (:at 1629832233040) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832243054) (:by |B1y7Rc-Zz) (:text |comp-i)
                              |j $ %{} :Leaf (:at 1629833537262) (:by |B1y7Rc-Zz) (:text |:x)
                              |r $ %{} :Leaf (:at 1629832244297) (:by |B1y7Rc-Zz) (:text |16)
                              |v $ %{} :Expr (:at 1629832244637) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832245357) (:by |B1y7Rc-Zz) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1629832246714) (:by |B1y7Rc-Zz) (:text |200)
                                  |r $ %{} :Leaf (:at 1629832247335) (:by |B1y7Rc-Zz) (:text |80)
                                  |v $ %{} :Leaf (:at 1629832248614) (:by |B1y7Rc-Zz) (:text |70)
                      |y $ %{} :Expr (:at 1629832233938) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832234821) (:by |B1y7Rc-Zz) (:text |.render)
                          |j $ %{} :Leaf (:at 1629832236447) (:by |B1y7Rc-Zz) (:text |remove-plugin)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.timedrop)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629832073986) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547419785) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1524070875244) (:by |root) (:text |list->)
                        |p $ %{} :Leaf (:at 1629832579817) (:by |B1y7Rc-Zz) (:text |>>)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |y $ %{} :Leaf (:at 1529343437918) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1540104662034) (:by |root) (:text |input)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |yj $ %{} :Expr (:at 1527788936196) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788936499) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788937835) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788938747) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788939786) (:by |root) (:text |config)
                |yr $ %{} :Expr (:at 1540104114839) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540104114839) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540104114839) (:by |root) (:text |app.comp.kit)
                    |r $ %{} :Leaf (:at 1540104114839) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540104114839) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540104114839) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1540104114839) (:by |root) (:text |comp-title)
                |yv $ %{} :Expr (:at 1540104231673) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540104232181) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540104255308) (:by |root) (:text |inflow-popup.comp.dialog)
                    |r $ %{} :Leaf (:at 1540104256155) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540104256363) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540104256591) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1540104258062) (:by |root) (:text |comp-dialog)
                |yx $ %{} :Expr (:at 1540104421996) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540104422298) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540104423584) (:by |root) (:text "|\"dayjs")
                    |r $ %{} :Leaf (:at 1629832163512) (:by |B1y7Rc-Zz) (:text |:default)
                    |v $ %{} :Leaf (:at 1540104425607) (:by |root) (:text |dayjs)
                |yy $ %{} :Expr (:at 1540105454457) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540105455467) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629832193033) (:by |B1y7Rc-Zz) (:text |feather.core)
                    |r $ %{} :Leaf (:at 1540105461598) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540105461777) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540105461974) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1540105463294) (:by |root) (:text |comp-icon)
                        |r $ %{} :Leaf (:at 1629832196625) (:by |B1y7Rc-Zz) (:text |comp-i)
                |yyT $ %{} :Expr (:at 1540105644636) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540105644932) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629832123052) (:by |B1y7Rc-Zz) (:text |respo-alerts.core)
                    |r $ %{} :Leaf (:at 1540105651217) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1540105651431) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1540105651663) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1629832199527) (:by |B1y7Rc-Zz) (:text |use-confirm)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831963897) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831963897) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1629831963897) (:by |B1y7Rc-Zz) (:text |dev?)
              |r $ %{} :Expr (:at 1629831963897) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831963897) (:by |B1y7Rc-Zz) (:text |=)
                  |j $ %{} :Leaf (:at 1629831963897) (:by |B1y7Rc-Zz) (:text "|\"dev")
                  |r $ %{} :Expr (:at 1629831963897) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831963897) (:by |B1y7Rc-Zz) (:text |get-env)
                      |j $ %{} :Leaf (:at 1629831963897) (:by |B1y7Rc-Zz) (:text "|\"mode")
                      |n $ %{} :Leaf (:at 1658773217324) (:by |B1y7Rc-Zz) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1701878999038) (:by |B1y7Rc-Zz) (:text "|\"timestops")
                  |n $ %{} :Expr (:at 1629832780865) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629832785872) (:by |B1y7Rc-Zz) (:text |:storage-file)
                      |j $ %{} :Leaf (:at 1629832792030) (:by |B1y7Rc-Zz) (:text "|\"timedrops.cirru")
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:port)
                      |j $ %{} :Leaf (:at 1539709405785) (:by |root) (:text |11015)
                  |t $ %{} :Expr (:at 1527867502467) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527867504737) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1539709409218) (:by |root) (:text "|\"Timedrops")
                  |u $ %{} :Expr (:at 1527867511986) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527867512819) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1540103277095) (:by |root) (:text "|\"http://cdn.tiye.me/logo/timedrops.png")
                  |yj $ %{} :Expr (:at 1527866893140) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528010247576) (:by |root) (:text |:server-folder)
                      |j $ %{} :Leaf (:at 1539709433838) (:by |root) (:text "|\"tiye.me:servers/timedrops")
                  |yr $ %{} :Expr (:at 1535565550489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535565552318) (:by |B1y7Rc-Zz) (:text |:theme)
                      |j $ %{} :Leaf (:at 1535565554474) (:by |B1y7Rc-Zz) (:text "|\"#eeeeff")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788708227) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788708227) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788708227) (:by |root) (:text |app.config)
            |r $ %{} :Expr (:at 1528098188887) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1528098190433) (:by |root) (:text |:require)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |database $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |database)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |j $ %{} :Expr (:at 1538886498428) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1538886499001) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1538886500387) (:by |root) (:text |session)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                      |j $ %{} :Expr (:at 1538886501540) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1538886502106) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1538886502625) (:by |root) (:text |user)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |v $ %{} :Expr (:at 1540103613415) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540103814620) (:by |root) (:text |:timedrops)
                      |j $ %{} :Expr (:at 1540103616916) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540103617310) (:by |root) (:text |do)
                          |j $ %{} :Leaf (:at 1540103811485) (:by |root) (:text |timedrop)
                          |r $ %{} :Expr (:at 1540103619927) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540103620282) (:by |root) (:text |{})
        |router $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |session $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                      |j $ %{} :Expr (:at 1538886507054) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1538886507646) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1538886508475) (:by |root) (:text |router)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:home)
                              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529230759501) (:by |root) (:text |:messages)
                      |j $ %{} :Expr (:at 1529230760396) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529230760716) (:by |root) (:text |{})
        |timedrop $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1540103542709) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1540103544481) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1540103542709) (:by |root) (:text |timedrop)
              |r $ %{} :Expr (:at 1540103542709) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540103547250) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1540103547872) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540103548400) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1540103549069) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1540103551511) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540103554247) (:by |root) (:text |:time)
                      |j $ %{} :Leaf (:at 1540103557002) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1540103557467) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540103559547) (:by |root) (:text |:text)
                      |j $ %{} :Leaf (:at 1540103560388) (:by |root) (:text |nil)
        |user $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:avatar)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.schema)
    |app.server $ %{} :FileEntry
      :defs $ {}
        |*client-caches $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |*client-caches)
              |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |{})
        |*initial-db $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636994775434) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |*initial-db)
              |r $ %{} :Expr (:at 1636994775434) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1636994775434) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |path-exists?)
                      |j $ %{} :Expr (:at 1636994775434) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |w-log)
                          |j $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |storage-file)
                  |r $ %{} :Expr (:at 1636994775434) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |do)
                      |j $ %{} :Expr (:at 1636994775434) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text "|\"Found local EDN data")
                      |r $ %{} :Expr (:at 1636994775434) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |merge)
                          |j $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |schema/database)
                          |r $ %{} :Expr (:at 1636994775434) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                              |j $ %{} :Expr (:at 1636994775434) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |read-file)
                                  |j $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |storage-file)
                  |v $ %{} :Expr (:at 1636994775434) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |do)
                      |j $ %{} :Expr (:at 1636994775434) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text "|\"Found no data")
                      |r $ %{} :Leaf (:at 1636994775434) (:by |B1y7Rc-Zz) (:text |schema/database)
        |*reader-reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |*reader-reel)
              |r $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |@*reel)
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |*reel)
              |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |merge)
                  |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |reel-schema)
                  |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |{})
                      |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:base)
                          |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                      |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:db)
                          |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |@*initial-db)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |dispatch!)
              |r $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |op)
                  |r $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |sid)
              |v $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |op-id)
                          |j $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |generate-id!)
                      |j $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |op-time)
                          |j $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |get-time!)
                              |r $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |.timestamp)
                  |r $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text "|\"Dispatch!")
                          |r $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |str)
                              |j $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |op)
                          |x $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |sid)
                  |v $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |=)
                          |j $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |op)
                          |r $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |:effect/persist)
                      |r $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |persist-db!)
                      |v $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |reset!)
                          |j $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |*reel)
                          |r $ %{} :Expr (:at 1636994806467) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |reel-reducer)
                              |j $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |updater)
                              |v $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |op)
                              |y $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |sid)
                              |yT $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |op-id)
                              |yj $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |op-time)
                              |yr $ %{} :Leaf (:at 1636994806467) (:by |B1y7Rc-Zz) (:text |config/dev?)
        |get-backup-path! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636994823586) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |get-backup-path!)
              |r $ %{} :Expr (:at 1636994823586) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636994823586) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1636994823586) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1636994823586) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |now)
                          |j $ %{} :Expr (:at 1636994823586) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |.extract)
                              |j $ %{} :Expr (:at 1636994823586) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |get-time!)
                  |r $ %{} :Expr (:at 1636994823586) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |join-path)
                      |j $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |r $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text "|\"backups")
                      |v $ %{} :Expr (:at 1636994823586) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Expr (:at 1636994823586) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |:month)
                              |j $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |now)
                      |x $ %{} :Expr (:at 1636994823586) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Expr (:at 1636994823586) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |:day)
                              |j $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text |now)
                          |r $ %{} :Leaf (:at 1636994823586) (:by |B1y7Rc-Zz) (:text "|\"-snapshot.cirru")
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |main!)
              |r $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text "|\"release")
              |x $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |p?)
                          |j $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |get-env)
                              |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text "|\"port")
                      |j $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |port)
                          |j $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |some?)
                                  |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |p?)
                              |r $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |parse-float)
                                  |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |p?)
                              |v $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |:port)
                                  |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |run-server!)
                      |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |port)
                  |v $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |println)
                      |j $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text "|\"Server started on port:")
                          |r $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |port)
              |y $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |do)
                  |j $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |;)
                      |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text "|\"init it before doing multi-threading")
                  |r $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |identity)
                      |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
              |yT $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |set-interval)
                  |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |200)
                  |r $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |r $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |render-loop!)
              |yj $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |set-interval)
                  |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |600000)
                  |r $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |r $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |yr $ %{} :Expr (:at 1636994839089) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |on-control-c)
                  |j $ %{} :Leaf (:at 1636994839089) (:by |B1y7Rc-Zz) (:text |on-exit!)
        |on-exit! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636994850811) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636994850811) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636994850811) (:by |B1y7Rc-Zz) (:text |on-exit!)
              |r $ %{} :Expr (:at 1636994850811) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636994850811) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994850811) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |x $ %{} :Expr (:at 1636994850811) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994850811) (:by |B1y7Rc-Zz) (:text |;)
                  |j $ %{} :Leaf (:at 1636994850811) (:by |B1y7Rc-Zz) (:text |println)
                  |r $ %{} :Leaf (:at 1636994850811) (:by |B1y7Rc-Zz) (:text "|\"exit code is...")
              |y $ %{} :Expr (:at 1636994850811) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994850811) (:by |B1y7Rc-Zz) (:text |quit!)
                  |j $ %{} :Leaf (:at 1636994850811) (:by |B1y7Rc-Zz) (:text |0)
        |persist-db! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |r $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |file-content)
                          |j $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                              |j $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |assoc)
                                  |j $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |:db)
                                      |j $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |@*reel)
                                  |r $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |:sessions)
                                  |v $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |{})
                      |j $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |storage-path)
                          |j $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |storage-file)
                      |r $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |backup-path)
                          |j $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |get-backup-path!)
                  |r $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                      |j $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |storage-path)
                      |r $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |file-content)
                  |v $ %{} :Expr (:at 1636994997203) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                      |j $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |backup-path)
                      |r $ %{} :Leaf (:at 1636994997203) (:by |B1y7Rc-Zz) (:text |file-content)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636994869644) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |reload!)
              |r $ %{} :Expr (:at 1636994869644) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636994869644) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text "|\"Code updated..")
              |x $ %{} :Expr (:at 1636994869644) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1636994869644) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |not)
                      |j $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1636994869644) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |raise)
                      |j $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text "|\"reloading only happens in dev mode")
              |y $ %{} :Expr (:at 1636994869644) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
              |yT $ %{} :Expr (:at 1636994869644) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |reset!)
                  |j $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |*reel)
                  |r $ %{} :Expr (:at 1636994869644) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |refresh-reel)
                      |j $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |@*reel)
                      |r $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                      |v $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |updater)
              |yj $ %{} :Expr (:at 1636994869644) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |sync-clients!)
                  |j $ %{} :Leaf (:at 1636994869644) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
        |render-loop! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |render-loop!)
              |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |when)
                  |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |not)
                      |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |identical?)
                          |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
                          |r $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |@*reel)
                  |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |reset!)
                      |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |*reader-reel)
                      |r $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |@*reel)
                  |v $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |sync-clients!)
                      |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
        |run-server! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |run-server!)
              |r $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |port)
              |v $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                  |j $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |&{})
                      |j $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |:port)
                      |r $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |port)
                  |r $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |data)
                      |r $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686364429699) (:by |B1y7Rc-Zz) (:text |tag-match)
                          |j $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |data)
                          |r $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |:connect)
                                  |j $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |sid)
                              |j $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |do)
                                  |j $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |j $ %{} :Expr (:at 1696788824807) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1696788825599) (:by |B1y7Rc-Zz) (:text |::)
                                          |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |:session/connect)
                                      |v $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |sid)
                                  |r $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |println)
                                      |j $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text "|\"New client.")
                          |v $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |:message)
                                  |j $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |sid)
                                  |r $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |msg)
                              |j $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |let)
                                  |j $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |action)
                                          |j $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                              |j $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |msg)
                                  |r $ %{} :Expr (:at 1696788841091) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696788841091) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |b $ %{} :Leaf (:at 1696788841091) (:by |B1y7Rc-Zz) (:text |action)
                                      |h $ %{} :Leaf (:at 1696788841091) (:by |B1y7Rc-Zz) (:text |sid)
                          |x $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |:disconnect)
                                  |j $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |sid)
                              |j $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |do)
                                  |j $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |println)
                                      |j $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text "|\"Client closed!")
                                  |r $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |j $ %{} :Expr (:at 1696788845217) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1696788845834) (:by |B1y7Rc-Zz) (:text |::)
                                          |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                                      |v $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |sid)
                          |y $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |_)
                              |j $ %{} :Expr (:at 1636994895713) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |println)
                                  |j $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text "|\"unknown data:")
                                  |r $ %{} :Leaf (:at 1636994895713) (:by |B1y7Rc-Zz) (:text |data)
        |storage-file $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636994909477) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text |storage-file)
              |r $ %{} :Expr (:at 1636994909477) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1636994909477) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text |empty?)
                      |j $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                  |r $ %{} :Expr (:at 1636994909477) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text |str)
                      |j $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |r $ %{} :Expr (:at 1636994909477) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text |:storage-file)
                          |j $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text |config/site)
                  |v $ %{} :Expr (:at 1636994909477) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text |str)
                      |j $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |r $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text "|\"/")
                      |v $ %{} :Expr (:at 1636994909477) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text |:storage-file)
                          |j $ %{} :Leaf (:at 1636994909477) (:by |B1y7Rc-Zz) (:text |config/site)
        |sync-clients! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |sync-clients!)
              |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |reel)
              |v $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |wss-each!)
                  |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |sid)
                      |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |let)
                          |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |db)
                                  |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:db)
                                      |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |reel)
                              |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |records)
                                  |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:records)
                                      |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |reel)
                              |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |session)
                                  |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |get-in)
                                      |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |db)
                                      |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |[])
                                          |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:sessions)
                                          |r $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |sid)
                              |v $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |old-store)
                                  |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |or)
                                      |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |get)
                                          |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |@*client-caches)
                                          |r $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |sid)
                                      |r $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |nil)
                              |x $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |new-store)
                                  |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |twig-container)
                                      |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |db)
                                      |r $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |session)
                                      |v $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |records)
                              |y $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |changes)
                                  |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |diff-twig)
                                      |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |old-store)
                                      |r $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |new-store)
                                      |v $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:key)
                                              |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:id)
                          |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1636994922634) (:by |B1y7Rc-Zz) (:text |;)
                              |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |when)
                              |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |config/dev?)
                              |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |println)
                                  |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text "|\"Changes for")
                                  |r $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |sid)
                                  |v $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text "|\":")
                                  |x $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |changes)
                                  |y $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |count)
                                      |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |records)
                          |v $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |not=)
                                  |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |changes)
                                  |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |[])
                              |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |do)
                                  |j $ %{} :Expr (:at 1636994942442) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636994942442) (:by |B1y7Rc-Zz) (:text |wss-send!)
                                      |j $ %{} :Leaf (:at 1636994942442) (:by |B1y7Rc-Zz) (:text |sid)
                                      |r $ %{} :Expr (:at 1636994942442) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1636994942442) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                                          |b $ %{} :Expr (:at 1696788912849) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696788913141) (:by |B1y7Rc-Zz) (:text |::)
                                              |b $ %{} :Leaf (:at 1696788914611) (:by |B1y7Rc-Zz) (:text |:patch)
                                              |h $ %{} :Leaf (:at 1696788916170) (:by |B1y7Rc-Zz) (:text |changes)
                                  |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |swap!)
                                      |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |*client-caches)
                                      |r $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |v $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |sid)
                                      |x $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |new-store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
          :data $ {}
            |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |ns)
            |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |app.server)
            |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:require)
                |j $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |app.schema)
                    |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:as)
                    |r $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |schema)
                |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |app.updater)
                    |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |updater)
                |x $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |cumulo-reel.core)
                    |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |reel-reducer)
                        |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |refresh-reel)
                        |r $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |reel-schema)
                |yj $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |app.config)
                    |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:as)
                    |r $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |config)
                |yx $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |app.twig.container)
                    |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |twig-container)
                |yy $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |recollect.diff)
                    |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |diff-twig)
                |yyT $ %{} :Expr (:at 1636994968888) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636994968888) (:by |B1y7Rc-Zz) (:text |wss.core)
                    |j $ %{} :Leaf (:at 1636994968888) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636994968888) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636994968888) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                        |j $ %{} :Leaf (:at 1636994968888) (:by |B1y7Rc-Zz) (:text |wss-send!)
                        |r $ %{} :Leaf (:at 1636994968888) (:by |B1y7Rc-Zz) (:text |wss-each!)
                |yyj $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |recollect.twig)
                    |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629831870307) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1629831870307) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
                |yyr $ %{} :Expr (:at 1636994958711) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |app.$meta)
                    |j $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636994958711) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                |yyv $ %{} :Expr (:at 1636994958711) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |calcit.std.fs)
                    |j $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636994958711) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |path-exists?)
                        |j $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                |yyx $ %{} :Expr (:at 1636994958711) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |calcit.std.time)
                    |j $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636994958711) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |set-interval)
                |yyy $ %{} :Expr (:at 1636994958711) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |calcit.std.date)
                    |j $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636994958711) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |Date)
                        |j $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |get-time!)
                |yyyT $ %{} :Expr (:at 1636994958711) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |calcit.std.path)
                    |j $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636994958711) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636994958711) (:by |B1y7Rc-Zz) (:text |join-path)
    |app.style $ %{} :FileEntry
      :defs $ {}
        |link $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519367966237) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1519367970413) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1519367966237) (:by |root) (:text |link)
              |r $ %{} :Expr (:at 1519367966237) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519367974187) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1519367974501) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519367980887) (:by |root) (:text |:text-decoration)
                      |j $ %{} :Leaf (:at 1519367984967) (:by |root) (:text |:underline)
                  |r $ %{} :Expr (:at 1519367985371) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519367998049) (:by |root) (:text |:cursor)
                      |j $ %{} :Leaf (:at 1519367996458) (:by |root) (:text |:pointer)
                  |v $ %{} :Expr (:at 1519368028360) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519368029579) (:by |root) (:text |:color)
                      |j $ %{} :Expr (:at 1519368031142) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519368031562) (:by |root) (:text |hsl)
                          |j $ %{} :Leaf (:at 1519368032307) (:by |root) (:text |240)
                          |r $ %{} :Leaf (:at 1519368032737) (:by |root) (:text |80)
                          |v $ %{} :Leaf (:at 1519368033240) (:by |root) (:text |80)
                  |x $ %{} :Expr (:at 1519368217607) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519368219848) (:by |root) (:text |:font-family)
                      |j $ %{} :Leaf (:at 1519368227853) (:by |root) (:text |ui/font-fancy)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1519367963533) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1519367963533) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1519367963533) (:by |root) (:text |app.style)
            |r $ %{} :Expr (:at 1519368036923) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1519368038192) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1519368038575) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519368038764) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629832547157) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1519368041713) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519368041918) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519368042785) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1519368043289) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1519368236509) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519368236979) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1519368258261) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1519368241627) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1519368242073) (:by |root) (:text |ui)
    |app.twig.container $ %{} :FileEntry
      :defs $ {}
        |twig-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1629832686862) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-container)
              |n $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                  |r $ %{} :Leaf (:at 1507828952210) (:by |root) (:text |records)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |some?)
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |r $ %{} :Expr (:at 1507830626848) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507830630278) (:by |root) (:text |base-data)
                          |j $ %{} :Expr (:at 1507830631302) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507830631896) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1507830632113) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830641027) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1507830639219) (:by |root) (:text |logged-in?)
                              |n $ %{} :Expr (:at 1507830674443) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830677551) (:by |root) (:text |:session)
                                  |j $ %{} :Leaf (:at 1507830679311) (:by |root) (:text |session)
                              |v $ %{} :Expr (:at 1507830649968) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830655148) (:by |root) (:text |:reel-length)
                                  |j $ %{} :Expr (:at 1507830655987) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507830657551) (:by |root) (:text |count)
                                      |j $ %{} :Leaf (:at 1507830658789) (:by |root) (:text |records)
                  |r $ %{} :Expr (:at 1507830661017) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1507830661999) (:by |root) (:text |merge)
                      |L $ %{} :Leaf (:at 1507830664014) (:by |root) (:text |base-data)
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |if)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                          |r $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user)
                                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
                                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |get-in)
                                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                                          |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                                              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                              |x $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                  |j $ %{} :Expr (:at 1524070628251) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1524070634499) (:by |root) (:text |assoc)
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                                      |j $ %{} :Leaf (:at 1524070635855) (:by |root) (:text |:data)
                                      |r $ %{} :Expr (:at 1524070636122) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832746260) (:by |B1y7Rc-Zz) (:text |case-default)
                                          |j $ %{} :Expr (:at 1524070641804) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070642493) (:by |root) (:text |:name)
                                              |j $ %{} :Leaf (:at 1524070643351) (:by |root) (:text |router)
                                          |l $ %{} :Expr (:at 1629832746962) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832746962) (:by |B1y7Rc-Zz) (:text |{})
                                          |n $ %{} :Expr (:at 1525108994160) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1525108995413) (:by |root) (:text |:home)
                                              |j $ %{} :Expr (:at 1525108999855) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1540103871905) (:by |root) (:text |:timedrops)
                                                  |j $ %{} :Leaf (:at 1525109002404) (:by |root) (:text |db)
                                          |r $ %{} :Expr (:at 1524070643948) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070646898) (:by |root) (:text |:profile)
                                              |j $ %{} :Expr (:at 1524070654495) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524070662619) (:by |root) (:text |twig-members)
                                                  |j $ %{} :Expr (:at 1524070665615) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070670477) (:by |root) (:text |:sessions)
                                                      |j $ %{} :Leaf (:at 1524070672563) (:by |root) (:text |db)
                                                  |r $ %{} :Expr (:at 1524070673171) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070674094) (:by |root) (:text |:users)
                                                      |j $ %{} :Leaf (:at 1524070675166) (:by |root) (:text |db)
                              |y $ %{} :Expr (:at 1523120222572) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523120223864) (:by |root) (:text |:count)
                                  |j $ %{} :Expr (:at 1523120229051) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523120230136) (:by |root) (:text |count)
                                      |j $ %{} :Expr (:at 1523120230346) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1523120232122) (:by |root) (:text |:sessions)
                                          |j $ %{} :Leaf (:at 1523120232500) (:by |root) (:text |db)
                              |yT $ %{} :Expr (:at 1524279105545) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1533834715393) (:by |B1y7Rc-Zz) (:text |:color)
                                  |j $ %{} :Expr (:at 1524279111422) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636995037433) (:by |B1y7Rc-Zz) (:text |rand-hex-color!)
                          |v $ %{} :Expr (:at 1636995029165) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636995030166) (:by |B1y7Rc-Zz) (:text |{})
        |twig-members $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1524070676419) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1629832709230) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1524070676419) (:by |root) (:text |twig-members)
              |r $ %{} :Expr (:at 1524070676419) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524070680419) (:by |root) (:text |sessions)
                  |j $ %{} :Leaf (:at 1524070708862) (:by |root) (:text |users)
              |v $ %{} :Expr (:at 1524070683188) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629832711190) (:by |B1y7Rc-Zz) (:text |->)
                  |j $ %{} :Leaf (:at 1524070692906) (:by |root) (:text |sessions)
                  |r $ %{} :Expr (:at 1524070693234) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629832714677) (:by |B1y7Rc-Zz) (:text |.map-kv)
                      |j $ %{} :Expr (:at 1524070696021) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070696334) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1524070696681) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070697507) (:by |root) (:text |k)
                              |j $ %{} :Leaf (:at 1524070699358) (:by |root) (:text |session)
                          |r $ %{} :Expr (:at 1524070700350) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070701520) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1524070702142) (:by |root) (:text |k)
                              |r $ %{} :Expr (:at 1524070702968) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070705127) (:by |root) (:text |get-in)
                                  |j $ %{} :Leaf (:at 1524070714762) (:by |root) (:text |users)
                                  |r $ %{} :Expr (:at 1524070715457) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070716715) (:by |root) (:text |[])
                                      |j $ %{} :Expr (:at 1524070717257) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1524070720176) (:by |root) (:text |:user-id)
                                          |j $ %{} :Leaf (:at 1524070722292) (:by |root) (:text |session)
                                      |r $ %{} :Leaf (:at 1524070725752) (:by |root) (:text |:name)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.container)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.user)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
                |v $ %{} :Expr (:at 1524279121206) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636995046593) (:by |B1y7Rc-Zz) (:text |calcit.std.rand)
                    |r $ %{} :Leaf (:at 1636995047945) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1636995048390) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636995052033) (:by |B1y7Rc-Zz) (:text |rand-hex-color!)
    |app.twig.user $ %{} :FileEntry
      :defs $ {}
        |twig-user $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1629832761377) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.user)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1517930722619) (:by |root) (:text |sid)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |y $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |tag-match)
                  |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op)
                  |h $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |:session/connect)
                      |b $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |session/connect)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |db)
                          |l $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-time)
                  |l $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                      |b $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |session/disconnect)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |db)
                          |l $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-time)
                  |o $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |:session/remove-message)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |session/remove-message)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-time)
                  |q $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |user/log-in)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-time)
                  |s $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |:user/sign-up)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |user/sign-up)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-time)
                  |t $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |:user/log-out)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |user/log-out)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-time)
                  |u $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |:router/change)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |router/change)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-time)
                  |v $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |:timedrop/create-one)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |timedrop/create-one)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-time)
                  |w $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |:timedrop/remove-one)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |timedrop/remove-one)
                          |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op-time)
                  |x $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |_)
                      |b $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |do)
                          |b $ %{} :Expr (:at 1696788812447) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text "||Unknown op:")
                              |h $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |op)
                          |h $ %{} :Leaf (:at 1696788812447) (:by |B1y7Rc-Zz) (:text |db)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.session)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.user)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.router)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                |y $ %{} :Expr (:at 1529231005993) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1529231006285) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1529231007723) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1529231008972) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1529231009860) (:by |root) (:text |schema)
                |yD $ %{} :Expr (:at 1540104912801) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540104912801) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540104912801) (:by |root) (:text |app.updater.timedrop)
                    |r $ %{} :Leaf (:at 1540104912801) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1540104912801) (:by |root) (:text |timedrop)
                |yT $ %{} :Expr (:at 1529231108810) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1529231110305) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1529231113905) (:by |root) (:text |respo-message.updater)
                    |r $ %{} :Leaf (:at 1529231114617) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1529231114849) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1529231116379) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1529231118760) (:by |root) (:text |update-messages)
    |app.updater.router $ %{} :FileEntry
      :defs $ {}
        |change $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |change)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.router)
    |app.updater.session $ %{} :FileEntry
      :defs $ {}
        |connect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |connect)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |merge)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema/session)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
        |disconnect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |disconnect)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |update)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                          |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
        |remove-message $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1529231499908) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1529231499908) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1529231499908) (:by |root) (:text |remove-message)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1529231506714) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1529231507936) (:by |root) (:text |update-in)
                  |j $ %{} :Leaf (:at 1529231509725) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1529231509958) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529231510376) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1529231511756) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1529231512509) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1529231515700) (:by |root) (:text |:messages)
                  |v $ %{} :Expr (:at 1529231534326) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1529231534991) (:by |root) (:text |fn)
                      |L $ %{} :Expr (:at 1529231535248) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529231536189) (:by |root) (:text |messages)
                      |T $ %{} :Expr (:at 1529231516827) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529231517957) (:by |root) (:text |dissoc)
                          |j $ %{} :Leaf (:at 1529231519342) (:by |root) (:text |messages)
                          |r $ %{} :Expr (:at 1529231521395) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529231522521) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1529231524125) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.session)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema)
    |app.updater.timedrop $ %{} :FileEntry
      :defs $ {}
        |create-one $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1540104840158) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1540104840158) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1540104840158) (:by |root) (:text |create-one)
              |r $ %{} :Expr (:at 1540104844210) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540104844210) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1540104844210) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1540104844210) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1540104844210) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1540104844210) (:by |root) (:text |op-time)
              |x $ %{} :Expr (:at 1540104848839) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540104850816) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1540104851832) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1540104852178) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540104852424) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1540104856046) (:by |root) (:text |:timedrops)
                      |r $ %{} :Leaf (:at 1540104859739) (:by |root) (:text |op-id)
                  |v $ %{} :Expr (:at 1540104862517) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540104863186) (:by |root) (:text |merge)
                      |j $ %{} :Leaf (:at 1540104865950) (:by |root) (:text |schema/timedrop)
                      |n $ %{} :Leaf (:at 1540104873466) (:by |root) (:text |op-data)
                      |r $ %{} :Expr (:at 1540104867304) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540104867621) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1540104867816) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1540104868278) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1540104870105) (:by |root) (:text |op-id)
        |remove-one $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1540105571268) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1540105571268) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1540105571268) (:by |root) (:text |remove-one)
              |r $ %{} :Expr (:at 1540105575124) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540105575124) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1540105575124) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1540105575124) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1540105575124) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1540105575124) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1540105580693) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1540105581758) (:by |root) (:text |update)
                  |j $ %{} :Leaf (:at 1540105584798) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1540105587745) (:by |root) (:text |:timedrops)
                  |v $ %{} :Expr (:at 1540105590208) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1540105590529) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1540105591488) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540105592881) (:by |root) (:text |timedrops)
                      |r $ %{} :Expr (:at 1540105594051) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1540105597398) (:by |root) (:text |dissoc)
                          |j $ %{} :Leaf (:at 1540105600946) (:by |root) (:text |timedrops)
                          |r $ %{} :Leaf (:at 1540105603516) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1540104835204) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1540104835204) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1540104835204) (:by |root) (:text |app.updater.timedrop)
            |r $ %{} :Expr (:at 1540104876694) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1540104877501) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1540104878828) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1540104879006) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1540104882786) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1540104883285) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1540104884020) (:by |root) (:text |schema)
    |app.updater.user $ %{} :FileEntry
      :defs $ {}
        |log-in $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |log-in)
              |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |db)
                  |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |op-data)
                  |r $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |sid)
                  |v $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |op-id)
                  |x $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |op-time)
              |v $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |username)
                              |r $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |password)
                          |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |op-data)
                      |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |maybe-user)
                          |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |:users)
                                  |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |db)
                              |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |vals)
                              |v $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |x $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |find)
                                  |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |user)
                                      |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |and)
                                          |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |=)
                                              |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |username)
                                              |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |user)
                  |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |update-in)
                      |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |db)
                      |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |:sessions)
                          |r $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |sid)
                      |v $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |fn)
                          |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |session)
                          |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |some?)
                                  |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |maybe-user)
                              |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |if)
                                  |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |=)
                                      |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |md5)
                                          |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |password)
                                      |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |:password)
                                          |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |maybe-user)
                                  |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |session)
                                      |r $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |:user-id)
                                      |v $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |:id)
                                          |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |maybe-user)
                                  |v $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |update)
                                      |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |session)
                                      |r $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |:messages)
                                      |v $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |fn)
                                          |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |messages)
                                          |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |messages)
                                              |r $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |op-id)
                                              |v $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |{})
                                                  |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |op-id)
                                                  |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |:text)
                                                      |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |str)
                                                          |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text "|\"Wrong password for ")
                                                          |r $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |username)
                              |v $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |update)
                                  |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |session)
                                  |r $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |:messages)
                                  |v $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |messages)
                                      |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |assoc)
                                          |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |messages)
                                          |r $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |op-id)
                                          |v $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |op-id)
                                              |r $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |:text)
                                                  |j $ %{} :Expr (:at 1629833186874) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |str)
                                                      |j $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text "|\"No user named: ")
                                                      |r $ %{} :Leaf (:at 1629833186874) (:by |B1y7Rc-Zz) (:text |username)
        |log-out $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |log-out)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |sign-up $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |sign-up)
              |r $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |db)
                  |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |op-data)
                  |r $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |sid)
                  |v $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |op-id)
                  |x $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |op-time)
              |v $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |username)
                              |r $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |password)
                          |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |op-data)
                      |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |maybe-user)
                          |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |find)
                              |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |vals)
                                  |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:users)
                                      |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |db)
                              |r $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |user)
                                  |r $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |=)
                                      |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |username)
                                      |r $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:name)
                                          |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |user)
                  |r $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |maybe-user)
                      |r $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |update-in)
                          |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |db)
                          |r $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:sessions)
                              |r $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |sid)
                              |v $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:messages)
                          |v $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |messages)
                              |r $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |assoc)
                                  |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |messages)
                                  |r $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |op-id)
                                  |v $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:id)
                                          |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |op-id)
                                      |r $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:text)
                                          |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |str)
                                              |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text "|\"Name is taken: ")
                                              |r $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |username)
                      |v $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |->)
                          |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |db)
                          |r $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |assoc-in)
                              |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |[])
                                  |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |sid)
                                  |v $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:user-id)
                              |r $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |op-id)
                          |v $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |assoc-in)
                              |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |[])
                                  |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:users)
                                  |r $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |op-id)
                              |r $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:id)
                                      |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |op-id)
                                  |r $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:name)
                                      |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |username)
                                  |v $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:nickname)
                                      |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |username)
                                  |x $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:password)
                                      |j $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |md5)
                                          |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |password)
                                  |y $ %{} :Expr (:at 1629832677027) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |:avatar)
                                      |j $ %{} :Leaf (:at 1629832677027) (:by |B1y7Rc-Zz) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.user)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.util)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |find-first)
                |r $ %{} :Expr (:at 1513097118588) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636995070610) (:by |B1y7Rc-Zz) (:text |calcit.std.hash)
                    |r $ %{} :Leaf (:at 1636995072176) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1636995073770) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636995074780) (:by |B1y7Rc-Zz) (:text |md5)
  :users $ {}
    |B1y7Rc-Zz $ {} (:avatar nil) (:id |B1y7Rc-Zz) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
