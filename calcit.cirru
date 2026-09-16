
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :native) (:reload-fn 'app.client/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |alerts.calcit/ |respo-feather.calcit/
      :type-slots $ {}
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!)
      :feature-policy $ {}
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit.std/ |calcit-wss/
      :type-slots $ {}
  :files $ {}
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *states
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *store ({})
          :examples $ []
          :schema $ :: 'Dynamic
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect! ()
            let
                url-obj $ unsafe-coerce (url-parse js/location.href true) 'JsObject
                query $ unsafe-coerce (.-query url-obj) 'JsObject
                host-value $ .-host query
                port-value $ .-port query
                host $ if (js-present? host-value) (unsafe-coerce host-value 'String) (unsafe-coerce js/location.hostname 'String)
                port $ if (js-present? port-value) (unsafe-coerce port-value 'String)
                  option:unwrap $ get config/site :port
              ws-connect! (str |ws:// host |: port)
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event)
                    reset! *store $ {}
                    js/console.error "|Lost connection!"
                  :on-data on-server-data
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when
              and config/dev? $ not=
                option:unwrap-or (nth op 0) :unknown
                , :states
              js/console.log |Dispatch op
            match op
              (:states cursor s)
                reset! *states $ update-states (deref *states) cursor s
              (:effect/connect) (connect!)
              _ $ ws-send! op
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            connect!
            add-watch *store :changes $ fn (store prev) (render-app!)
            add-watch *states :changes $ fn (states prev) (render-app!)
            on-page-touch $ fn () $ if
              empty? $ deref *store
              connect!
            println "|App started!"
          :examples $ []
          :schema $ :: 'Dynamic
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target (js/document.querySelector |.app)
          :examples $ []
          :schema $ :: 'Dynamic
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-server-data (data)
            match data $
              :patch changes
              do
                when config/dev? $ js/console.log |Changes changes
                reset! *store $ patch-twig (deref *store) changes
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if
              or (some? client-errors) (some? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
                add-watch *store :changes $ fn (store prev) (render-app!)
                add-watch *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target
              comp-container
                option:unwrap $ get (deref *states) :states
                deref *store
              , dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            let
                raw $ js/localStorage.getItem $ option:unwrap (get config/site :storage-key)
              if (js-present? raw)
                do (println "|Found storage.")
                  dispatch! $ :: :user/log-in $ parse-cirru-edn (unsafe-coerce raw 'String)
                do $ println "|Found no storage."
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.client
          :require
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
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (states store)
            let
                state $ option:unwrap-or (get states :data) ({})
                session $ option:unwrap-or (get store :session) ({})
                router $ option:unwrap-or (get store :router) ({})
                router-data $ option:unwrap-or (get router :data) ({})
              if (empty? store) (comp-offline)
                div
                  {} $ :style $ merge ui/global ui/fullscreen ui/column
                  comp-navigation
                    option:unwrap-or (get store :logged-in?) false
                    option:unwrap-or (get store :count) 0
                  if
                    option:unwrap-or (get store :logged-in?) false
                    case-default
                      option:unwrap-or (get router :name) nil
                      <> $ str router
                      :home $ comp-dashboard states router-data
                      :profile $ comp-profile
                        option:unwrap-or (get store :user) ({})
                        , router-data
                    comp-login states
                  comp-status-color $ option:unwrap-or (get store :color) nil
                  when dev? $ comp-inspect |Store store $ {} (:bottom 0) (:left 0) (:max-width |100%)
                  comp-messages
                    option:unwrap-or
                      get-in store $ [] :session :messages
                      {}
                    {}
                    fn (info d!) (d! :session/remove-message info)
                  when dev? $ comp-reel
                    option:unwrap-or (get store :reel-length) 0
                    {}
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-offline ()
            div
              {} $ :style $ merge ui/global ui/fullscreen ui/column-dispersive
                {} $ :background-color $ option:unwrap-or (get config/site :theme) |#eeeeff
              div $ {} $ :style
                {} $ :height 0
              div $ {} $ :style
                {}
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
          :schema $ :: 'Dynamic
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} $ :style
              let
                  size 24
                {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:background-color color) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-body
            {} $ :padding "|8px 16px"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
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
    'app.comp.dashboard $ %{} 'FileEntry
      :defs $ {} $ 'comp-dashboard
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-dashboard (states timedrops)
            let
                cursor $ option:unwrap-or (get states :cursor) ([])
                state $ option:unwrap-or (get states :data)
                  {} (:pop? false) (:draft |) (:time nil)
              div
                {} $ :style $ {} (:padding 16)
                div ({})
                  button $ {} (:style ui/button) (:inner-text |Drop)
                    :on-click $ fn (e d!)
                      d! cursor $ {} (:pop? true) (:draft |)
                        :time $ js/Date.now
                      do
                        flipped js/setTimeout 200 $ fn () $ let
                            target $ js/document.querySelector |.input
                          if (js-present? target)
                            do
                              .!focus $ unsafe-coerce target 'JsObject
                              , &unit
                            do (js/console.warn |Unknown target) &unit
                        , &unit
                =< nil 16
                list-> ({})
                  -> timedrops (.to-list)
                    .sort-by $ fn (pair)
                      negate $ option:unwrap-or
                        get
                          option:unwrap $ last pair
                          , :time
                        , 0
                    .map-pair $ fn (k timedrop)
                      [] k $ comp-timedrop
                        >> states $ option:unwrap-or (get timedrop :id) :unknown
                        , timedrop
                comp-modal
                  {} (:title |Demo)
                    :style $ {} $ :width 400
                    :container-style $ {}
                    :render $ fn (on-close)
                      div
                        {} $ :style $ {} (:min-width 260)
                        <>
                          unsafe-coerce
                            ->
                              option:unwrap-or (get state :time) 0
                              , dayjs $ .!format "|MM-DD HH:mm:ss"
                            , 'String
                          {} (:font-size 24) (:font-family ui/font-fancy)
                        div ({})
                          input $ {} (:class-name |input)
                            :style $ merge ui/input $ {} (:width |100%)
                            :value $ option:unwrap-or (get state :draft) |
                            :placeholder "|Some notes"
                            :on-input $ fn (e d!)
                              d! cursor $ assoc state :draft $ option:unwrap-or (get e :value) |
                        =< nil 8
                        div
                          {} $ :style ui/row-parted
                          span $ {}
                          button $ {} (:style ui/button) (:inner-text |Submit)
                            :on-click $ fn (e d!) (on-close d!)
                              d! :timedrop/create-one $ {}
                                :time $ option:unwrap-or (get state :time) 0
                                :text $ option:unwrap-or (get state :draft) |
                  option:unwrap-or (get state :pop?) false
                  fn (d!)
                    d! cursor $ assoc state :pop? false
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.dashboard
          :require
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
    'app.comp.kit $ %{} 'FileEntry
      :defs $ {} $ 'comp-title
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-title (title)
            <> title $ {} (:font-family ui/font-fancy) (:font-size 20)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.kit
          :require
            [] hsl.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> <> span div button
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
    'app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-login (states)
            let
                cursor $ option:unwrap-or (get states :cursor) ([])
                state $ option:unwrap-or (get states :data) initial-state
              div
                {} $ :style $ {} (:display :flex) (:align-items :center) (:justify-content :center)
                div ({})
                  div
                    {} $ :style $ {}
                    div ({})
                      input $ {} (:placeholder |Username)
                        :value $ option:unwrap-or (get state :username) |
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :username $ option:unwrap-or (get e :value) |
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder |Password)
                        :value $ option:unwrap-or (get state :password) |
                        :style ui/input
                        :on-input $ fn (e d!)
                          d! cursor $ assoc state :password $ option:unwrap-or (get e :value) |
                  =< nil 8
                  div
                    {} $ :style $ {} (:text-align :right)
                    span $ {} (:inner-text "|Sign up")
                      :style $ merge ui/link
                      :on-click $ on-submit
                        option:unwrap-or (get state :username) |
                        option:unwrap-or (get state :password) |
                        , true
                    =< 8 nil
                    span $ {} (:inner-text "|Log in")
                      :style $ merge ui/link
                      :on-click $ on-submit
                        option:unwrap-or (get state :username) |
                        option:unwrap-or (get state :password) |
                        , false
          :examples $ []
          :schema $ :: 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state
            {} (:username |) (:password |)
          :examples $ []
          :schema $ :: 'Dynamic
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            fn (e dispatch!)
              dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ [] username password
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            [] respo.core :refer $ [] defcomp <> div input button span
            [] respo.comp.space :refer $ [] =<
            [] respo.comp.inspect :refer $ [] comp-inspect
            [] respo-ui.core :as ui
            [] app.schema :as schema
            [] app.style :as style
            [] app.config :as config
    'app.comp.navigation $ %{} 'FileEntry
      :defs $ {} $ 'comp-navigation
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-navigation (logged-in? count-members)
            div
              {} $ :style $ merge ui/row-center
                {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                  :border-bottom $ str "|1px solid " $ hsl 0 0 0
                  :font-family ui/font-fancy
                  :background-color $ :theme config/site
              div
                {}
                  :on-click $ fn (e d!)
                    d! :router/change $ {} $ :name :home
                  :style $ {} $ :cursor :pointer
                <>
                  option:unwrap-or (get config/site :title) |Timedrops
                  , nil
              div
                {}
                  :style $ {} $ :cursor |pointer
                  :on-click $ fn (e d!)
                    d! :router/change $ {} $ :name :profile
                <> $ if logged-in? |Me |Guest
                =< 8 nil
                <> count-members
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.navigation
          :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.comp.space :refer $ [] =<
            [] respo.core :refer $ [] defcomp <> action-> span div
            [] app.config :as config
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {} $ 'comp-profile
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-profile (user members)
            div
              {} $ :style $ merge ui/flex
                {} $ :padding 16
              div
                {} $ :style $ {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " $ option:unwrap-or (get user :name) |
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
                        {} $ :style $ {} (:padding "|0 8px")
                          :border $ str "|1px solid " $ hsl 0 0 80
                          :border-radius |16px
                          :margin "|0 4px"
                        <> username
              =< nil 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!)
                      do
                        js/location.replace $ str js/location.origin |?time= $ js/Date.now
                        , &unit
                  <> |Refresh
                =< 8 nil
                button
                  {}
                    :style $ merge ui/button $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch! mutate!) (dispatch! :user/log-out nil)
                      do
                        js/localStorage.removeItem $ :storage-key config/site
                        , &unit
                  <> "|Log out"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.profile
          :require
            [] respo-ui.core :refer $ [] hsl
            [] app.schema :as schema
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp list-> <> span div button
            [] respo.comp.space :refer $ [] =<
            [] app.config :as config
    'app.comp.timedrop $ %{} 'FileEntry
      :defs $ {} $ 'comp-timedrop
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-timedrop (states timedrop)
            let
                remove-plugin $ use-confirm (>> states :remove)
                  {} $ :text "|Sure to delete?"
              div
                {} $ :style $ merge ui/row-parted
                  {}
                    :border-bottom $ str "|1px solid " $ hsl 0 0 94
                    :padding "|8px 0"
                span ({})
                  <>
                    unsafe-coerce
                      ->
                        option:unwrap-or (get timedrop :time) 0
                        , dayjs $ .!format "|MM:DD HH:mm:ss"
                      , 'String
                    {} (:font-size 20) (:font-family ui/font-fancy)
                  =< 8 nil
                  <>
                    option:unwrap-or (get timedrop :text) |checked
                    {} (:font-size 12)
                      :color $ hsl 0 0 70
                span
                  {}
                    :style $ {}
                      :color $ hsl 0 0 80
                      :cursor :pointer
                    :on-click $ fn (e d!)
                      .show remove-plugin d! $ fn () $ d! :timedrop/remove-one
                        option:unwrap-or (get timedrop :id) nil
                  comp-i :x 16 $ hsl 200 80 70
                .render remove-plugin
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.timedrop
          :require
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
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:storage-key |timestops) (:storage-file |timedrops.cirru) (:port 11015) (:title |Timedrops) (:icon |http://cdn.tiye.me/logo/timedrops.png) (:server-folder |tiye.me:servers/timedrops) (:theme |#eeeeff)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config (:require)
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            {}
              :sessions $ do session $ {}
              :users $ do user $ {}
              :timedrops $ do timedrop $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            {} (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ :: 'Dynamic
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ do router $ {} (:name :home) (:data nil) (:router nil)
              :messages $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'timedrop $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def timedrop
            {} (:id nil) (:time nil) (:text nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def user
            {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *client-caches ({})
          :examples $ []
          :schema $ :: 'Dynamic
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *initial-db
            if
              path-exists? $ w-log storage-file
              do (println "|Found local EDN data")
                merge schema/database $ parse-cirru-edn $ read-file storage-file
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ :: 'Dynamic
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Dynamic
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            %{} cumulo-reel.core/ReelState (:base @*initial-db) (:db @*initial-db)
              :records $ []
              :merged? false
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op sid)
            let
                op-id $ generate-id!
                op-time $ calcit.std.date/get-timestamp $ get-time!
              if config/dev? $ println |Dispatch! (str op) sid
              if (= op :effect/persist) (persist-db!)
                reset! *reel $ reel-reducer @*reel updater op sid op-id op-time config/dev?
          :examples $ []
          :schema $ :: 'Dynamic
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-backup-path! ()
            let
                now $ calcit.std.date/extract-time $ get-time!
              join-path calcit-dirname |backups
                str $ option:unwrap $ get now :month
                str
                  option:unwrap $ get now :day
                  , |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            let
                p? $ get-env |port
                port $ if-let (value p?)
                  match (parse-float value)
                    (:ok parsed) parsed
                    (:err _) (:port config/site)
                  :port config/site
              run-server! port
              println $ str "|Server started on port:" port
            do (; "|init it before doing multi-threading") (identity @*reader-reel)
            set-interval 200 $ fn () $ render-loop!
            set-interval 600000 $ fn () $ persist-db!
            on-control-c on-exit!
          :examples $ []
          :schema $ :: 'Dynamic
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                file-content $ format-cirru-edn $ assoc
                    :db $ unsafe-coerce @*reel 'cumulo-reel.core/ReelState
                  , :sessions ({})
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated..")
            if (not config/dev?) (raise "|reloading only happens in dev mode")
            clear-twig-caches!
            reset! *reel $ refresh-reel @*reel @*initial-db updater
            sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            wss-serve! (&{} :port port)
              fn (data)
                match data
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
          :schema $ :: 'Dynamic
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            if (empty? calcit-dirname)
              str calcit-dirname $ :storage-file config/site
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ :: 'Dynamic
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel)
            wss-each! $ fn (sid)
              let
                  db $
                    :db $ unsafe-coerce reel 'cumulo-reel.core/ReelState
                  records $ :records $ unsafe-coerce reel 'cumulo-reel.core/ReelState
                  session $ option:unwrap-or
                    get-in db $ [] :sessions sid
                    {}
                  old-store $ or (get @*client-caches sid) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store $ {} (:key :id)
                ; when config/dev? $ println "|Changes for" sid |: changes $ count records
                if
                  not= changes $ []
                  do
                    wss-send! sid $ format-cirru-edn $ :: :patch changes
                    swap! *client-caches assoc sid new-store
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.server
          :require (app.schema :as schema)
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
    'app.style $ %{} 'FileEntry
      :defs $ {} $ 'link
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def link
            {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.style
          :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db session records)
            let
                user-id $ option:unwrap-or (get session :user-id) nil
                logged-in? $ some? user-id
                router $ option:unwrap-or (get session :router) ({})
                user-data $ option:unwrap-or
                  get-in db $ [] :users user-id
                  {}
                db-sessions $ option:unwrap-or (get db :sessions) ({})
                db-users $ option:unwrap-or (get db :users) ({})
                base-data $ {} (:logged-in? logged-in?) (:session session)
                  :reel-length $ count records
              merge base-data $ if logged-in?
                {}
                  :user $ twig-user user-data
                  :router $ assoc router :data $ case-default
                    option:unwrap-or (get router :name) nil
                    {}
                    :home $ option:unwrap-or (get db :timedrops) ({})
                    :profile $ twig-members db-sessions db-users
                  :count $ count db-sessions
                  :color $ rand-hex-color!
                {}
          :examples $ []
          :schema $ :: 'Dynamic
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            -> sessions $ .map-kv $ fn (k session)
              [] k $ option:unwrap-or
                get-in users $ []
                  option:unwrap $ get session :user-id
                  , :name
                , nil
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require
            [] app.twig.user :refer $ [] twig-user
            calcit.std.rand :refer $ rand-hex-color!
    'app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user) (dissoc user :password)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.user (:require)
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
            match op
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
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.schema :as schema) ([] app.updater.timedrop :as timedrop)
            [] respo-message.updater :refer $ [] update-messages
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :router) op-data
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db sid op-id op-time)
            assoc-in db ([] :sessions sid)
              merge schema/session $ {} $ :id sid
          :examples $ []
          :schema $ :: 'Dynamic
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db sid op-id op-time)
            update db :sessions $ fn (session) (dissoc session sid)
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db op-data sid op-id op-time)
            update-in db ([] :sessions sid :messages)
              fn (messages)
                dissoc (option:unwrap messages)
                  option:unwrap $ get op-data :id
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ [] app.schema :as schema
    'app.updater.timedrop $ %{} 'FileEntry
      :defs $ {}
        'create-one $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-one (db op-data sid op-id op-time)
            assoc-in db ([] :timedrops op-id)
              merge schema/timedrop op-data $ {} $ :id op-id
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-one $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-one (db op-data sid op-id op-time)
            update db :timedrops $ fn (timedrops) (dissoc timedrops op-data)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.timedrop
          :require $ [] app.schema :as schema
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  , op-data
                users $ option:unwrap-or (get db :users) ({})
                maybe-user $ -> users vals .to-list $ find
                  fn (user)
                    = username $ option:unwrap $ get user :name
              update-in db ([] :sessions sid)
                fn (session)
                  let
                      session-data $ option:unwrap session
                    if-let (user maybe-user)
                      if
                        = (md5 password)
                          option:unwrap $ get user :password
                        assoc session-data :user-id $ option:unwrap $ get user :id
                        update session-data :messages $ fn (messages)
                          assoc (option:unwrap messages) op-id $ {} (:id op-id)
                            :text $ str "|Wrong password for " username
                      update session-data :messages $ fn (messages)
                        assoc (option:unwrap messages) op-id $ {} (:id op-id)
                          :text $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Dynamic
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :user-id) nil
          :examples $ []
          :schema $ :: 'Dynamic
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  , op-data
                users $ option:unwrap-or (get db :users) ({})
                maybe-user $ find
                  -> users vals $ .to-list
                  fn (user)
                    = username $ option:unwrap $ get user :name
              if-let (user maybe-user)
                update-in db ([] :sessions sid :messages)
                  fn (messages)
                    assoc (option:unwrap messages) op-id $ {} (:id op-id)
                      :text $ str "|Name is taken: " username
                -> db
                  assoc-in ([] :sessions sid :user-id) op-id
                  assoc-in ([] :users op-id)
                    {} (:id op-id) (:name username) (:nickname username)
                      :password $ md5 password
                      :avatar nil
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require
            [] app.util :refer $ [] find-first
            calcit.std.hash :refer $ md5
