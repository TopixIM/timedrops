
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |app)
  :configs $ {} (:init-fn |app.client/main!) (:reload-fn |app.client/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |alerts.calcit/ |respo-feather.calcit/
  :entries $ {}
    :server $ {} (:init-fn |app.server/main!) (:reload-fn |app.server/reload!) (:version |0.0.0)
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit.std/ |calcit-wss/
  :files $ {}
    |app.client $ %{} :FileEntry
      :defs $ {}
        |*states $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defatom *states $ {}
              :states $ {}
                :cursor $ []
          :examples $ []
        |*store $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote (defatom *store nil)
          :examples $ []
        |connect! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn connect! () $ let
                url-obj $ url-parse js/location.href true
                host $ either (-> url-obj .-query .-host) js/location.hostname
                port $ either (-> url-obj .-query .-port) (:port config/site)
              ws-connect! (str |ws:// host |: port)
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event) (reset! *store nil) (js/console.error "|Lost connection!")
                  :on-data on-server-data
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= (nth op 0) :states
                js/console.log |Dispatch op
              tag-match op
                (:states cursor s)
                  reset! *states $ update-states @*states cursor s
                (:effect/connect) (connect!)
                _ $ ws-send! op
          :examples $ []
        |main! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              render-app!
              connect!
              add-watch *store :changes $ fn (store prev) (render-app!)
              add-watch *states :changes $ fn (states prev) (render-app!)
              on-page-touch $ fn ()
                if (nil? @*store) (connect!)
              println "|App started!"
          :examples $ []
        |mount-target $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
        |on-server-data $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn on-server-data (data)
              tag-match data $
                :patch changes
                do
                  when config/dev? $ js/console.log |Changes changes
                  reset! *store $ patch-twig @*store changes
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn reload! () $ if
              or (some? client-errors) (some? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
                add-watch *store :changes $ fn (store prev) (render-app!)
                add-watch *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
          :examples $ []
        |render-app! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn render-app! () $ render! mount-target
              comp-container (:states @*states) @*store
              , dispatch!
          :examples $ []
        |simulate-login! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn simulate-login! () $ let
                raw $ .!getItem js/localStorage (:storage-key config/site)
              if (some? raw)
                do (println "|Found storage.")
                  dispatch! $ :: :user/log-in (parse-cirru-edn raw)
                do $ println "|Found no storage."
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.client $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo.cursor :refer $ update-states
            app.comp.container :refer $ comp-container
            app.schema :as schema
            app.config :as config
            ws-edn.client :refer $ ws-connect! ws-send!
            recollect.patch :refer $ patch-twig
            cumulo-util.core :refer $ on-page-touch
            |url-parse :default url-parse
            |bottom-tip :default hud!
            |./calcit.build-errors :default client-errors
            |../js-out/calcit.build-errors :default server-errors
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-container (states store)
              let
                  state $ :data states
                  session $ :session store
                  router $ :router store
                  router-data $ :data router
                if (nil? store) (comp-offline)
                  div
                    {} $ :style (merge ui/global ui/fullscreen ui/column)
                    comp-navigation (:logged-in? store) (:count store)
                    if (:logged-in? store)
                      case (:name router)
                        :home $ comp-dashboard states router-data
                        :profile $ comp-profile (:user store) (:data router)
                        <> router
                      comp-login states
                    comp-status-color $ :color store
                    when dev? $ comp-inspect |Store store
                      {} (:bottom 0) (:left 0) (:max-width |100%)
                    comp-messages
                      get-in store $ [] :session :messages
                      {}
                      fn (info d!) (d! :session/remove-message info)
                    when dev? $ comp-reel (:reel-length store) ({})
          :examples $ []
        |comp-offline $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-offline () $ div
              {} $ :style
                merge ui/global ui/fullscreen ui/column-dispersive $ {}
                  :background-color $ :theme config/site
              div $ {}
                :style $ {} (:height 0)
              div $ {}
                :style $ {}
                  :background-image $ str "|url(" (:icon config/site) "|)"
                  :width 128
                  :height 128
                  :background-size :contain
              div
                {}
                  :style $ {} (:cursor :pointer) (:line-height |32px)
                  :on-click $ fn (e d!) (d! :effect/connect nil)
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
        |comp-status-color $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-status-color (color)
              div $ {}
                :style $ let
                    size 24
                  {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:background-color color) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
        |style-body $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def style-body $ {} (:padding "|8px 16px")
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            [] hsl.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp <> div span action-> cursor-> button
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo.comp.space :refer $ [] =<
            [] app.comp.navigation :refer $ [] comp-navigation
            [] app.comp.profile :refer $ [] comp-profile
            [] app.comp.login :refer $ [] comp-login
            [] respo-message.comp.messages :refer $ [] comp-messages
            [] cumulo-reel.comp.reel :refer $ [] comp-reel
            [] app.config :refer $ [] dev?
            [] app.schema :as schema
            [] app.config :as config
            [] app.comp.dashboard :refer $ [] comp-dashboard
    |app.comp.dashboard $ %{} :FileEntry
      :defs $ {}
        |comp-dashboard $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-dashboard (states timedrops)
              let
                  cursor $ :cursor states
                  state $ or (:data states)
                    {} (:pop? false) (:draft |) (:time nil)
                div
                  {} $ :style
                    {} $ :padding 16
                  div ({})
                    button $ {} (:style ui/button) (:inner-text |Drop)
                      :on-click $ fn (e d!)
                        d! cursor $ {} (:pop? true) (:draft |)
                          :time $ js/Date.now
                        flipped js/setTimeout 200 $ fn ()
                          let
                              target $ js/document.querySelector |.input
                            if (some? target) (.!focus target) (js/console.warn "|Unknown target")
                  =< nil 16
                  list-> ({})
                    -> timedrops (.to-list)
                      .sort-by $ fn (pair)
                        negate $ :time (last pair)
                      .map-pair $ fn (k timedrop)
                        [] k $ comp-timedrop
                          >> states $ :id timedrop
                          , timedrop
                  comp-modal
                    {} (:title |Demo)
                      :style $ {} (:width 400)
                      :container-style $ {}
                      :render $ fn (on-close)
                        div
                          {} $ :style
                            {} $ :min-width 260
                          <>
                            -> (:time state) dayjs $ .!format "|MM-DD HH:mm:ss"
                            {} (:font-size 24) (:font-family ui/font-fancy)
                          div ({})
                            input $ {} (:class-name |input)
                              :style $ merge ui/input
                                {} $ :width |100%
                              :value $ :draft state
                              :placeholder "|Some notes"
                              :on-input $ fn (e d!)
                                d! cursor $ assoc state :draft
                                  str $ :value e
                          =< nil 8
                          div
                            {} $ :style ui/row-parted
                            span $ {}
                            button $ {} (:style ui/button) (:inner-text |Submit)
                              :on-click $ fn (e d!) (on-close d!)
                                d! :timedrop/create-one $ {}
                                  :time $ :time state
                                  :text $ :draft state
                    :pop? state
                    fn (d!)
                      d! cursor $ assoc state :pop? false
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.comp.dashboard $ :require
            [] hsl.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> >> <> span div button input
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
            [] app.comp.kit :refer $ [] comp-title
            [] |dayjs :default dayjs
            [] app.comp.timedrop :refer $ [] comp-timedrop
            respo-alerts.core :refer $ comp-modal
    |app.comp.kit $ %{} :FileEntry
      :defs $ {}
        |comp-title $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-title (title)
              <> title $ {} (:font-family ui/font-fancy) (:font-size 20)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.comp.kit $ :require
            [] hsl.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> <> span div button
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
    |app.comp.login $ %{} :FileEntry
      :defs $ {}
        |comp-login $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-login (states)
              let
                  cursor $ :cursor states
                  state $ or (:data states) initial-state
                div
                  {} $ :style (merge ui/flex ui/center)
                  div ({})
                    div
                      {} $ :style ({})
                      div ({})
                        input $ {} (:placeholder |Username)
                          :value $ :username state
                          :style ui/input
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :username
                              str $ :value e
                      =< nil 8
                      div ({})
                        input $ {} (:placeholder |Password)
                          :value $ :password state
                          :style ui/input
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :password
                              str $ :value e
                    =< nil 8
                    div
                      {} $ :style
                        {} $ :text-align :right
                      span $ {} (:inner-text "|Sign up")
                        :style $ merge ui/link
                        :on-click $ on-submit (:username state) (:password state) true
                      =< 8 nil
                      span $ {} (:inner-text "|Log in")
                        :style $ merge ui/link
                        :on-click $ on-submit (:username state) (:password state) false
          :examples $ []
        |initial-state $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def initial-state $ {} (:username |) (:password |)
          :examples $ []
        |on-submit $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn on-submit (username password signup?)
              fn (e dispatch!)
                dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
                js/localStorage.setItem (:storage-key config/site)
                  format-cirru-edn $ [] username password
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.comp.login $ :require
            [] respo.core :refer $ [] defcomp <> div input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.schema :as schema
            [] app.style :as style
            [] app.config :as config
    |app.comp.navigation $ %{} :FileEntry
      :defs $ {}
        |comp-navigation $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-navigation (logged-in? count-members)
              div
                {} $ :style
                  merge ui/row-center $ {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                    :border-bottom $ str "|1px solid " (hsl 0 0 0 0.1)
                    :font-family ui/font-fancy
                    :background-color $ :theme config/site
                div
                  {}
                    :on-click $ fn (e d!)
                      d! :router/change $ {} (:name :home)
                    :style $ {} (:cursor :pointer)
                  <> (:title config/site) nil
                div
                  {}
                    :style $ {} (:cursor |pointer)
                    :on-click $ fn (e d!)
                      d! :router/change $ {} (:name :profile)
                  <> $ if logged-in? |Me |Guest
                  =< 8 nil
                  <> count-members
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.comp.navigation $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp <> action-> span div
            [] app.config :as config
    |app.comp.profile $ %{} :FileEntry
      :defs $ {}
        |comp-profile $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-profile (user members)
              div
                {} $ :style
                  merge ui/flex $ {} (:padding 16)
                div
                  {} $ :style
                    {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                  <> $ str "|Hello! " (:name user)
                =< nil 16
                div
                  {} $ :style ui/row
                  <> |Members:
                  =< 8 nil
                  list->
                    {} $ :style ui/row
                    -> members (.to-list)
                      .map-pair $ fn (k username)
                        [] k $ div
                          {} $ :style
                            {} (:padding "|0 8px")
                              :border $ str "|1px solid " (hsl 0 0 80)
                              :border-radius |16px
                              :margin "|0 4px"
                          <> username
                =< nil 48
                div ({})
                  button
                    {}
                      :style $ merge ui/button
                      :on-click $ fn (e d!)
                        js/location.replace $ str js/location.origin |?time= (js/Date.now)
                    <> |Refresh
                  =< 8 nil
                  button
                    {}
                      :style $ merge ui/button
                        {} (:color :red) (:border-color :red)
                      :on-click $ fn (e dispatch! mutate!) (dispatch! :user/log-out nil)
                        js/localStorage.removeItem $ :storage-key config/site
                    <> "|Log out"
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.comp.profile $ :require
            [] respo-ui.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> <> span div button
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
    |app.comp.timedrop $ %{} :FileEntry
      :defs $ {}
        |comp-timedrop $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-timedrop (states timedrop)
              let
                  remove-plugin $ use-confirm (>> states :remove)
                    {} $ :text "|Sure to delete?"
                div
                  {} $ :style
                    merge ui/row-parted $ {}
                      :border-bottom $ str "|1px solid " (hsl 0 0 94)
                      :padding "|8px 0"
                  span ({})
                    <>
                      -> timedrop :time dayjs $ .!format "|MM:DD HH:mm:ss"
                      {} (:font-size 20) (:font-family ui/font-fancy)
                    =< 8 nil
                    <>
                      or (:text timedrop) |checked
                      {} (:font-size 12)
                        :color $ hsl 0 0 70
                  span
                    {}
                      :style $ {}
                        :color $ hsl 0 0 80
                        :cursor :pointer
                      :on-click $ fn (e d!)
                        .show remove-plugin d! $ fn ()
                          d! :timedrop/remove-one $ :id timedrop
                    comp-i :x 16 $ hsl 200 80 70
                  .render remove-plugin
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.comp.timedrop $ :require
            [] respo-ui.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> >> <> span div button input
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
            [] app.comp.kit :refer $ [] comp-title
            [] inflow-popup.comp.dialog :refer $ [] comp-dialog
            [] |dayjs :default dayjs
            [] feather.core :refer $ [] comp-icon comp-i
            [] respo-alerts.core :refer $ [] use-confirm
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def dev? $ = |dev (get-env |mode |release)
          :examples $ []
        |site $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def site $ {} (:storage-key |timestops) (:storage-file |timedrops.cirru) (:port 11015) (:title |Timedrops) (:icon |http://cdn.tiye.me/logo/timedrops.png) (:server-folder |tiye.me:servers/timedrops) (:theme |#eeeeff)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.config $ :require
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |database $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def database $ {}
              :sessions $ do session ({})
              :users $ do user ({})
              :timedrops $ do timedrop ({})
          :examples $ []
        |router $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def router $ {} (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
        |session $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def session $ {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ do router
                {} (:name :home) (:data nil) (:router nil)
              :messages $ {}
          :examples $ []
        |timedrop $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def timedrop $ {} (:id nil) (:time nil) (:text nil)
          :examples $ []
        |user $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def user $ {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.server $ %{} :FileEntry
      :defs $ {}
        |*client-caches $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defatom *client-caches $ {}
          :examples $ []
        |*initial-db $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defatom *initial-db $ if
              path-exists? $ w-log storage-file
              do (println "|Found local EDN data")
                merge schema/database $ parse-cirru-edn (read-file storage-file)
              do (println "|Found no data") schema/database
          :examples $ []
        |*reader-reel $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote (defatom *reader-reel @*reel)
          :examples $ []
        |*reel $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defatom *reel $ merge reel-schema
              {} (:base @*initial-db) (:db @*initial-db)
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn dispatch! (op sid)
              let
                  op-id $ generate-id!
                  op-time $ -> (get-time!) (.timestamp)
                if config/dev? $ println |Dispatch! (str op) sid
                if (= op :effect/persist) (persist-db!)
                  reset! *reel $ reel-reducer @*reel updater op sid op-id op-time config/dev?
          :examples $ []
        |get-backup-path! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn get-backup-path! () $ let
                now $ .extract (get-time!)
              join-path calcit-dirname |backups
                str $ :month now
                str (:day now) |-snapshot.cirru
          :examples $ []
        |main! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              let
                  p? $ get-env |port nil
                  port $ if (some? p?) (parse-float p?) (:port config/site)
                run-server! port
                println $ str "|Server started on port:" port
              do (; "|init it before doing multi-threading") (identity @*reader-reel)
              set-interval 200 $ fn () (render-loop!)
              set-interval 600000 $ fn () (persist-db!)
              on-control-c on-exit!
          :examples $ []
        |on-exit! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
        |persist-db! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn persist-db! () $ let
                file-content $ format-cirru-edn
                  assoc (:db @*reel) :sessions $ {}
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn reload! () (println "|Code updated..")
              if (not config/dev?) (raise "|reloading only happens in dev mode")
              clear-twig-caches!
              reset! *reel $ refresh-reel @*reel @*initial-db updater
              sync-clients! @*reader-reel
          :examples $ []
        |render-loop! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn render-loop! () $ when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
          :examples $ []
        |run-server! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn run-server! (port)
              wss-serve! (&{} :port port)
                fn (data)
                  tag-match data
                    (:connect sid)
                      do
                        dispatch! (:: :session/connect) sid
                        println "|New client."
                    (:message sid msg)
                      let
                          action $ parse-cirru-edn msg
                        dispatch! action sid
                    (:disconnect sid)
                      do (println "|Client closed!")
                        dispatch! (:: :session/disconnect) sid
                    _ $ println "|unknown data:" data
          :examples $ []
        |storage-file $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def storage-file $ if (empty? calcit-dirname)
              str calcit-dirname $ :storage-file config/site
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
        |sync-clients! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn sync-clients! (reel)
              wss-each! $ fn (sid)
                let
                    db $ :db reel
                    records $ :records reel
                    session $ get-in db ([] :sessions sid)
                    old-store $ or (get @*client-caches sid) nil
                    new-store $ twig-container db session records
                    changes $ diff-twig old-store new-store
                      {} $ :key :id
                  ; when config/dev? $ println "|Changes for" sid |: changes (count records)
                  if
                    not= changes $ []
                    do
                      wss-send! sid $ format-cirru-edn (:: :patch changes)
                      swap! *client-caches assoc sid new-store
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.server $ :require (app.schema :as schema)
            app.updater :refer $ updater
            cumulo-reel.core :refer $ reel-reducer refresh-reel reel-schema
            app.config :as config
            app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            recollect.twig :refer $ clear-twig-caches!
            app.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
            calcit.std.time :refer $ set-interval
            calcit.std.date :refer $ Date get-time!
            calcit.std.path :refer $ join-path
    |app.style $ %{} :FileEntry
      :defs $ {}
        |link $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def link $ {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.style $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
    |app.twig.container $ %{} :FileEntry
      :defs $ {}
        |twig-container $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn twig-container (db session records)
              let
                  logged-in? $ some? (:user-id session)
                  router $ :router session
                  base-data $ {} (:logged-in? logged-in?) (:session session)
                    :reel-length $ count records
                merge base-data $ if logged-in?
                  {}
                    :user $ twig-user
                      get-in db $ [] :users (:user-id session)
                    :router $ assoc router :data
                      case-default (:name router) ({})
                        :home $ :timedrops db
                        :profile $ twig-members (:sessions db) (:users db)
                    :count $ count (:sessions db)
                    :color $ rand-hex-color!
                  {}
          :examples $ []
        |twig-members $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn twig-members (sessions users)
              -> sessions $ .map-kv
                fn (k session)
                  [] k $ get-in users
                    [] (:user-id session) :name
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.twig.container $ :require
            [] app.twig.user :refer $ [] twig-user
            calcit.std.rand :refer $ rand-hex-color!
    |app.twig.user $ %{} :FileEntry
      :defs $ {}
        |twig-user $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn twig-user (user) (dissoc user :password)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.twig.user $ :require
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn updater (db op sid op-id op-time)
              tag-match op
                (:session/connect) (session/connect db sid op-id op-time)
                (:session/disconnect) (session/disconnect db sid op-id op-time)
                (:session/remove-message op-data) (session/remove-message db op-data sid op-id op-time)
                (:user/log-in op-data) (user/log-in db op-data sid op-id op-time)
                (:user/sign-up op-data) (user/sign-up db op-data sid op-id op-time)
                (:user/log-out op-data) (user/log-out db op-data sid op-id op-time)
                (:router/change op-data) (router/change db op-data sid op-id op-time)
                (:timedrop/create-one op-data) (timedrop/create-one db op-data sid op-id op-time)
                (:timedrop/remove-one op-data) (timedrop/remove-one db op-data sid op-id op-time)
                _ $ do (eprintln "|Unknown op:" op) db
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.schema :as schema) ([] app.updater.timedrop :as timedrop)
            [] respo-message.updater :refer $ [] update-messages
    |app.updater.router $ %{} :FileEntry
      :defs $ {}
        |change $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn change (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :router) op-data
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns app.updater.router)
    |app.updater.session $ %{} :FileEntry
      :defs $ {}
        |connect $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn connect (db sid op-id op-time)
              assoc-in db ([] :sessions sid)
                merge schema/session $ {} (:id sid)
          :examples $ []
        |disconnect $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn disconnect (db sid op-id op-time)
              update db :sessions $ fn (session) (dissoc session sid)
          :examples $ []
        |remove-message $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn remove-message (db op-data sid op-id op-time)
              update-in db ([] :sessions sid :messages)
                fn (messages)
                  dissoc messages $ :id op-data
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.updater.session $ :require ([] app.schema :as schema)
    |app.updater.timedrop $ %{} :FileEntry
      :defs $ {}
        |create-one $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn create-one (db op-data sid op-id op-time)
              assoc-in db ([] :timedrops op-id)
                merge schema/timedrop op-data $ {} (:id op-id)
          :examples $ []
        |remove-one $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn remove-one (db op-data sid op-id op-time)
              update db :timedrops $ fn (timedrops) (dissoc timedrops op-data)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.updater.timedrop $ :require ([] app.schema :as schema)
    |app.updater.user $ %{} :FileEntry
      :defs $ {}
        |log-in $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn log-in (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ -> (:users db) (vals) (.to-list)
                    find $ fn (user)
                      and $ = username (:name user)
                update-in db ([] :sessions sid)
                  fn (session)
                    if (some? maybe-user)
                      if
                        = (md5 password) (:password maybe-user)
                        assoc session :user-id $ :id maybe-user
                        update session :messages $ fn (messages)
                          assoc messages op-id $ {} (:id op-id)
                            :text $ str "|Wrong password for " username
                      update session :messages $ fn (messages)
                        assoc messages op-id $ {} (:id op-id)
                          :text $ str "|No user named: " username
          :examples $ []
        |log-out $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn log-out (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :user-id) nil
          :examples $ []
        |sign-up $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn sign-up (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ find
                    vals $ :users db
                    fn (user)
                      = username $ :name user
                if (some? maybe-user)
                  update-in db ([] :sessions sid :messages)
                    fn (messages)
                      assoc messages op-id $ {} (:id op-id)
                        :text $ str "|Name is taken: " username
                  -> db
                    assoc-in ([] :sessions sid :user-id) op-id
                    assoc-in ([] :users op-id)
                      {} (:id op-id) (:name username) (:nickname username)
                        :password $ md5 password
                        :avatar nil
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.updater.user $ :require
            [] app.util :refer $ [] find-first
            calcit.std.hash :refer $ md5
