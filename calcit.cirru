
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |recollect/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |alerts.calcit/ |respo-feather.calcit/ |js-ffi/
      :type-slots $ {}
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ [] |recollect/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit.std/ |calcit-wss/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.browser $ %{} 'FileEntry
      :defs $ {}
        'Dayjs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait Dayjs
            .format $ :: 'Fn $ {}
              :args $ [] 'app.browser/Dayjs 'String
              :return 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'event-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-value (event)
            decode-map-as
              .unwrap-or (get event :value) |
              , 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'focus-input! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn focus-input! ()
            match (browser/query-selector |.input)
              (:none) &unit
              (:some input) (browser/element-focus! input)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'format-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-time (time pattern)
            let
                date $ js-cast (dayjs time) 'app.browser/Dayjs
              .format date pattern
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Number 'String
            :features $ #{} :js-ffi
        'refresh! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn refresh! ()
            browser/location-replace! $ str
              .-origin $ browser/location-host
              , |?time= $ host/now-ms
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.browser
          :require (|dayjs :default dayjs) (js-ffi.browser :as browser) (js-ffi.shared :as host)
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *states
            {} $ :cursor $ []
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store (Option :none)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Option 'app.schema/Store
        '*wire-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *wire-store nil
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect! () (reset! *wire-store nil)
            reset! *store $ Option :none
            ws-connect! (connection-url)
              {}
                :on-open $ fn (event) (simulate-login!)
                :on-close $ fn (event) (reset! *wire-store nil)
                  reset! *store $ Option :none
                  host/console-error! |Lost-connection
                :on-data on-server-data
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'connection-url $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connection-url ()
            let
                location $ browser/location-host
                query $ host/search-params-create $ .-search location
                server-host $ .unwrap-or (host/search-params-get query |host) (.-hostname location)
                server-port $ .unwrap-or (host/search-params-get query |port)
                  str $ :port config/site
              str |ws:// server-host |: server-port
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (raw)
            let
                op $ schema/decode-op raw
              match op
                (:states cursor state)
                  reset! *states $ update-state-tree @*states cursor state
                (:effect/connect) (connect!)
                _ $ ws-send! $ schema/encode-op op
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            connect!
            add-watch! *store :changes $ fn (store previous) (render-app!)
            add-watch! *states :changes $ fn (states previous) (render-app!)
            on-page-touch $ fn () $ match @*store
              (:none) (connect!)
              (:some store) &unit
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ dom/query-selector |.app
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ []
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-server-data (data)
            try
              if (enum? data)
                match data
                  (:patch raw-changes)
                    let
                        changes $ decode-changes raw-changes
                        result $ try-patch-twig @*wire-store changes
                      match result
                        (:ok candidate)
                          let
                              decoded $ schema/decode-store candidate
                            reset! *wire-store candidate
                            reset! *store $ Option :some decoded
                        (:err error)
                          raise $ patch-error-message error
                  _ $ raise |Unsupported-server-message
                raise |Expected-server-message-enum
              fn (error)
                host/console-error! $ str |Rejected-server-patch: error
                hud! |error error
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if
              or (js-present? client-errors) (js-present? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch! *store :changes) (remove-watch! *states :changes) (clear-cache!) (render-app!)
                add-watch! *store :changes $ fn (store previous) (render-app!)
                add-watch! *states :changes $ fn (states previous) (render-app!)
                println |Code-updated
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! (mount-target)
              fn () $ comp-container @*states @*store
              , dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            match
              browser/storage-get $ :storage-key config/site
              (:none) &unit
              (:some content)
                try
                  ws-send! $ schema/encode-op $ schema/Op :user/log-in
                    schema/decode-credentials $ parse-cirru-edn content
                  fn (error)
                    host/console-error! $ str |Invalid-saved-login: error
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.client
          :require
            respo.core :refer $ render-with! clear-cache!
            respo.ffi.browser :as dom
            respo.cursor :refer $ update-state-tree
            app.comp.container :refer $ comp-container
            app.schema :as schema
            app.config :as config
            ws-edn.client :refer $ ws-connect! ws-send!
            recollect.patch :refer $ try-patch-twig patch-error-message
            recollect.schema :refer $ decode-changes
            cumulo-util.core :refer $ on-page-touch
            js-ffi.browser :as browser
            js-ffi.shared :as host
            |bottom-tip :default hud!
            |./calcit.build-errors :default client-errors
            |../js-out/calcit.build-errors :default server-errors
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (states maybe-store)
            match maybe-store
              (:none) (comp-offline)
              (:some store)
                div
                  {} $ :style $ merge ui/global ui/fullscreen ui/column
                  comp-navigation (:logged-in? store) (:count store)
                  match (:user store)
                    (:none) (comp-login states)
                    (:some user)
                      match (:router store)
                        (:none) (<> |Missing-route)
                        (:some router)
                          match (:name router)
                            :home $ comp-dashboard states $ :timedrops router
                            :profile $ comp-profile user $ :members router
                            _ $ <> $ str router
                  comp-status-color $ :color store
                  when dev? $ comp-inspect |Store store $ {} (:bottom 0) (:left 0) (:max-width |100%)
                  comp-messages
                    filter-map-kv
                      :messages $ :session store
                      fn (id message)
                        MapEntryDecision :keep id $ {}
                          :id $ :id message
                          :text $ :text message
                    {}
                    fn (info d!)
                      hint-fn $ {} (:return 'Unit)
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                            :args $ [] 'Dynamic
                      d! :session/remove-message $ decode-map-as
                        .unwrap $ get info :id
                        , 'String
                  when dev? $ comp-reel (:reel-length store) ({})
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic $ :: 'Option 'app.schema/Store
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-offline ()
            div
              {} $ :style $ merge ui/global ui/fullscreen ui/column-dispersive
                {} $ :background-color $ :theme config/site
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
                  :on-click $ fn (e d!)
                    hint-fn $ {} (:return 'Unit)
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                          :args $ [] 'Dynamic
                    d! $ :: :effect/connect
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} $ :style
              let
                  size 24
                {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:background-color color) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
        'style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-body
            {} $ :padding "|8px 16px"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            hsl.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> div span action-> cursor-> button
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ =<
            app.comp.navigation :refer $ comp-navigation
            app.comp.profile :refer $ comp-profile
            app.comp.login :refer $ comp-login
            respo-message.comp.messages :refer $ comp-messages
            cumulo-reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            app.schema :as schema
            app.config :as config
            app.comp.dashboard :refer $ comp-dashboard
    'app.comp.dashboard $ %{} 'FileEntry
      :defs $ {}
        'comp-dashboard $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-dashboard (states timedrops)
            let
                cursor $ .unwrap-or (get states :cursor) ([])
                state $ read-state states
              div
                {} $ :style $ {} (:padding 16)
                div ({})
                  button $ {} (:style ui/button) (:inner-text |Drop)
                    :on-click $ fn (e d!)
                      hint-fn $ {} (:return 'Unit)
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                            :args $ [] 'Dynamic
                      d! cursor $ schema/DashboardState :pop? true :draft | :time $ host/now-ms
                      browser/set-timeout!
                        fn () $ adapter/focus-input!
                        , 200
                      , &unit
                =< nil 16
                list-> ({})
                  ->
                    map-list-kv timedrops $ fn (id item) item
                    sort $ fn (a b)
                      - (:time b) (:time a)
                    map $ fn (timedrop)
                      [] (:id timedrop)
                        comp-timedrop
                          >> states $ :id timedrop
                          , timedrop
                comp-modal
                  {} (:title |Demo)
                    :style $ {} $ :width 400
                    :container-style $ {}
                    :render $ fn (on-close)
                      div
                        {} $ :style $ {} (:min-width 260)
                        <>
                          adapter/format-time (:time state) "|MM-DD HH:mm:ss"
                          {} (:font-size 24) (:font-family ui/font-fancy)
                        div ({})
                          input $ {} (:class-name |input)
                            :style $ merge ui/input $ {} (:width |100%)
                            :value $ :draft state
                            :placeholder "|Some notes"
                            :on-input $ fn (e d!)
                              hint-fn $ {} (:return 'Unit)
                                :args $ [] (:: 'Map 'Tag 'Dynamic)
                                  :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                                    :args $ [] 'Dynamic
                              d! cursor $ assoc state :draft $ adapter/event-value e
                        =< nil 8
                        div
                          {} $ :style ui/row-parted
                          span $ {}
                          button $ {} (:style ui/button) (:inner-text |Submit)
                            :on-click $ fn (e d!)
                              hint-fn $ {} (:return 'Unit)
                                :args $ [] (:: 'Map 'Tag 'Dynamic)
                                  :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                                    :args $ [] 'Dynamic
                              on-close d!
                              d! :timedrop/create-one $ {}
                                :time $ :time state
                                :text $ :draft state
                  :pop? state
                  fn (d!)
                    d! cursor $ assoc state :pop? false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic $ :: 'Map 'String 'app.schema/Timedrop
        'read-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-state (states)
            let
                fallback $ {} (:pop? false) (:draft |) (:time 0)
                raw $ .unwrap-or (get states :data) fallback
                data $ if (nil? raw) fallback $ schema/data-map raw
                time $ .unwrap-or (get data :time) nil
              decode-map-as
                if (nil? time) (assoc data :time 0) data
                , 'app.schema/DashboardState
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/DashboardState)
            :args $ [] 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.dashboard
          :require
            hsl.core :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp list-> >> <> span div button input
            respo.comp.space :refer $ =<
            app.config :as config
            app.comp.kit :refer $ comp-title
            app.comp.timedrop :refer $ comp-timedrop
            respo-alerts.core :refer $ comp-modal
            js-ffi.browser :as browser
            js-ffi.shared :as host
            app.browser :as adapter
    'app.comp.kit $ %{} 'FileEntry
      :defs $ {} $ 'comp-title
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-title (title)
            <> title $ {} (:font-family ui/font-fancy) (:font-size 20)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.kit
          :require
            hsl.core :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp list-> <> span div button
            respo.comp.space :refer $ =<
            app.config :as config
    'app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-login (states)
            let
                cursor $ .unwrap-or (get states :cursor) ([])
                state $ match (get states :data)
                  (:none) initial-state
                  (:some raw)
                    decode-map-as (schema/data-map raw) 'app.schema/LoginState
              div
                {} $ :style $ {} (:display :flex) (:align-items :center) (:justify-content :center)
                div ({})
                  div
                    {} $ :style $ {}
                    div ({})
                      input $ {} (:placeholder |Username)
                        :value $ :username state
                        :style ui/input
                        :on-input $ fn (e d!)
                          hint-fn $ {} (:return 'Unit)
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                                :args $ [] 'Dynamic
                          d! cursor $ assoc state :username $ adapter/event-value e
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder |Password)
                        :value $ :password state
                        :style ui/input
                        :on-input $ fn (e d!)
                          hint-fn $ {} (:return 'Unit)
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                                :args $ [] 'Dynamic
                          d! cursor $ assoc state :password $ adapter/event-value e
                  =< nil 8
                  div
                    {} $ :style $ {} (:text-align :right)
                    span $ {} (:inner-text "|Sign up")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) true
                    =< 8 nil
                    span $ {} (:inner-text "|Log in")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state (schema/LoginState :username | :password |)
          :examples $ []
          :schema $ :: 'app.schema/LoginState
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            fn (event dispatch!)
              hint-fn $ {} (:return 'Unit)
                :args $ [] (:: 'Map 'Tag 'Dynamic)
                  :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                    :args $ [] 'Dynamic
              dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
              browser/storage-set! (:storage-key config/site)
                format-cirru-edn $ [] username password
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String 'Bool
            :return $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
                :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                  :args $ [] 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            respo.core :refer $ defcomp <> div input button span
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
            app.schema :as schema
            app.style :as style
            app.config :as config
            js-ffi.browser :as browser
            js-ffi.shared :as host
            app.browser :as adapter
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
                    hint-fn $ {} (:return 'Unit)
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                          :args $ [] 'Dynamic
                    d! :router/change $ {} $ :name :home
                  :style $ {} $ :cursor :pointer
                <> (:title config/site) nil
              div
                {}
                  :style $ {} $ :cursor |pointer
                  :on-click $ fn (e d!)
                    hint-fn $ {} (:return 'Unit)
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                          :args $ [] 'Dynamic
                    d! :router/change $ {} $ :name :profile
                <> $ if logged-in? |Me |Guest
                =< 8 nil
                <> $ str count-members
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Bool 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.navigation
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp <> action-> span div
            app.config :as config
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {} $ 'comp-profile
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-profile (user members)
            div
              {} $ :style $ merge ui/flex
                {} $ :padding 16
              div
                {} $ :style $ {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " $ :name user
              =< nil 16
              div
                {} $ :style ui/row
                <> |Members:
                =< 8 nil
                list->
                  {} $ :style ui/row
                  map-list-kv members $ fn (id username)
                    [] id $ div
                      {} $ :style $ {} (:padding "|0 8px")
                        :border $ str "|1px solid " $ hsl 0 0 80
                        :border-radius |16px
                        :margin "|0 4px"
                      <> $ .unwrap-or username |
              =< nil 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!)
                      hint-fn $ {} (:return 'Unit)
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                            :args $ [] 'Dynamic
                      adapter/refresh!
                  <> |Refresh
                =< 8 nil
                button
                  {}
                    :style $ merge ui/button $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!)
                      hint-fn $ {} (:return 'Unit)
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                            :args $ [] 'Dynamic
                      dispatch! $ :: :user/log-out
                      browser/storage-remove! $ :storage-key config/site
                  <> "|Log out"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/UserView $ :: 'Map 'Number (:: 'Option 'String)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.profile
          :require
            respo-ui.core :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp list-> <> span div button
            respo.comp.space :refer $ =<
            app.config :as config
            js-ffi.browser :as browser
            js-ffi.shared :as host
            app.browser :as adapter
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
                    adapter/format-time (:time timedrop) "|MM:DD HH:mm:ss"
                    {} (:font-size 20) (:font-family ui/font-fancy)
                  =< 8 nil
                  <> (:text timedrop)
                    {} (:font-size 12)
                      :color $ hsl 0 0 70
                span
                  {}
                    :style $ {}
                      :color $ hsl 0 0 80
                      :cursor :pointer
                    :on-click $ fn (e d!)
                      hint-fn $ {} (:return 'Unit)
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {} (:rest 'Dynamic) (:return 'Unit)
                            :args $ [] 'Dynamic
                      .show remove-plugin d! $ fn () $ d! :timedrop/remove-one (:id timedrop)
                  comp-i :x 16 $ hsl 200 80 70
                .render remove-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'app.schema/Timedrop
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.timedrop
          :require
            respo-ui.core :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp list-> >> <> span div button input
            respo.comp.space :refer $ =<
            app.config :as config
            app.comp.kit :refer $ comp-title
            feather.core :refer $ comp-i
            respo-alerts.core :refer $ use-confirm
            js-ffi.browser :as browser
            js-ffi.shared :as host
            app.browser :as adapter
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            schema/Site :storage-key |timestops :storage-file |timedrops.cirru :port 11015 :title |Timedrops :icon |http://cdn.tiye.me/logo/timedrops.png :server-folder |tiye.me:servers/timedrops :theme |#eeeeff
          :examples $ []
          :schema $ :: 'app.schema/Site
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
          :require $ app.schema :as schema
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'DashboardState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct DashboardState (:pop? 'Bool) (:draft 'String) (:time 'Number)
          :examples $ []
          :schema $ :: 'StructDef
        'Db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Db
            :sessions $ :: 'Map 'Number 'app.schema/Session
            :users $ :: 'Map 'String 'app.schema/User
            :timedrops $ :: 'Map 'String 'app.schema/Timedrop
          :examples $ []
          :schema $ :: 'StructDef
        'LoginState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct LoginState (:username 'String) (:password 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Message (:id 'String) (:text 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:session/connect) (:session/disconnect) (:session/remove-message 'String)
            :user/log-in $ :: 'List 'String
            :user/sign-up $ :: 'List 'String
            :user/log-out
            :router/change 'app.schema/Router
            :timedrop/create-one 'app.schema/TimedropInput
            :timedrop/remove-one 'String
            :states (:: 'List 'Dynamic) 'Dynamic
            :effect/connect
            :reel/reset
            :reel/merge
            :effect/persist
          :examples $ []
          :schema $ :: 'EnumDef
        'Router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Router (:name 'Tag)
            :title $ :: 'Option 'String
            :data 'Dynamic
            :router 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'RouterView $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct RouterView (:name 'Tag)
            :timedrops $ :: 'Map 'String 'app.schema/Timedrop
            :members $ :: 'Map 'Number $ :: 'Option 'String
          :examples $ []
          :schema $ :: 'StructDef
        'Session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Session (:id 'Number)
            :user-id $ :: 'Option 'String
            :nickname $ :: 'Option 'String
            :router 'app.schema/Router
            :messages $ :: 'Map 'String 'app.schema/Message
          :examples $ []
          :schema $ :: 'StructDef
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Site (:storage-key 'String) (:storage-file 'String) (:port 'Number) (:title 'String) (:icon 'String) (:server-folder 'String) (:theme 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:logged-in? 'Bool) (:session 'app.schema/Session) (:reel-length 'Number)
            :user $ :: 'Option 'app.schema/UserView
            :router $ :: 'Option 'app.schema/RouterView
            :count 'Number
            :color 'String
          :examples $ []
          :schema $ :: 'StructDef
        'Timedrop $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Timedrop (:id 'String) (:time 'Number) (:text 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'TimedropInput $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct TimedropInput (:time 'Number) (:text 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'User $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct User (:id 'String) (:name 'String)
            :nickname $ :: 'Option 'String
            :avatar $ :: 'Option 'String
            :password 'String
          :examples $ []
          :schema $ :: 'StructDef
        'UserView $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct UserView (:id 'String) (:name 'String)
            :nickname $ :: 'Option 'String
            :avatar $ :: 'Option 'String
          :examples $ []
          :schema $ :: 'StructDef
        'data-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn data-map (raw)
            if (struct? raw)
              decode-map-as (&struct:to-map raw) (:: 'Map 'Tag 'Dynamic)
              decode-map-as raw $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            Db :sessions ({}) :users ({}) :timedrops $ {}
          :examples $ []
          :schema $ :: 'app.schema/Db
        'decode-credentials $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-credentials (raw)
            let
                credentials $ decode-map-as raw $ :: 'List 'String
              if
                = 2 $ .len credentials
                , credentials $ raise "|Expected two credential strings"
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'List 'String
        'decode-database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-database (raw)
            let
                data $ merge
                  {}
                    :sessions $ {}
                    :users $ {}
                    :timedrops $ {}
                  data-map raw
                sessions $ decode-map-as
                  .unwrap $ get data :sessions
                  :: 'Map 'Number 'Dynamic
                users $ decode-map-as
                  .unwrap $ get data :users
                  :: 'Map 'String 'Dynamic
                normalized $ -> data
                  assoc :sessions $ filter-map-kv sessions $ fn (id value)
                    MapEntryDecision :keep id $ normalize-session value
                  assoc :users $ filter-map-kv users $ fn (id value)
                    MapEntryDecision :keep id $ normalize-user value
                  assoc :timedrops $ filter-map-kv
                    decode-map-as
                      .unwrap $ get data :timedrops
                      :: 'Map 'String 'Dynamic
                    fn (id timedrop)
                      MapEntryDecision :keep id $ data-map timedrop
              decode-map-as normalized 'app.schema/Db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'Dynamic
          :tests $ []
            %{} 'TestEntry (:name |legacy-flat-map-and-nil-option)
              :code $ quote $ let
                  db $ decode-database $ {}
                    :users $ {} $ |u
                      {} (:id |u) (:name |Ada) (:password |hash) (:nickname nil) (:avatar nil)
                    :sessions $ {}
                    :timedrops $ {} $ |t
                      {} (:id |t) (:time 1000) (:text |first)
                  user $ .unwrap $ get (:users db) |u
                  timedrop-value $ .unwrap $ get (:timedrops db) |t
                assert= (Option :none) (:avatar user)
                assert= (Option :none) (:nickname user)
                assert= |Ada $ :name user
                assert= 1000 $ :time timedrop-value
                assert= |first $ :text timedrop-value
              :tags $ #{} :migration :unit
            %{} 'TestEntry (:name |reject-malformed-domain-data)
              :code $ quote $ assert= true
                try
                  do
                    decode-database $ {} $ :timedrops
                      {} $ |t $ {} (:id |t) (:time |bad) (:text |first)
                    , false
                  fn (error) true
              :tags $ #{} :migration :unit
        'decode-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-op (raw)
            if (enum? raw)
              match raw
                (:session/connect) (Op :session/connect)
                (:session/disconnect) (Op :session/disconnect)
                (:session/remove-message payload)
                  Op :session/remove-message $ if (string? payload) payload $ decode-map-as
                    .unwrap $ get
                      decode-map-as payload $ :: 'Map 'Tag 'Dynamic
                      , :id
                    , 'String
                (:user/log-in credentials)
                  Op :user/log-in $ decode-credentials credentials
                (:user/sign-up credentials)
                  Op :user/sign-up $ decode-credentials credentials
                (:user/log-out) (Op :user/log-out)
                (:router/change route)
                  Op :router/change $ decode-router route
                (:timedrop/create-one input)
                  Op :timedrop/create-one $ decode-map-as input 'app.schema/TimedropInput
                (:timedrop/remove-one id)
                  Op :timedrop/remove-one $ decode-map-as id 'String
                (:states cursor state)
                  Op :states
                    decode-map-as cursor $ :: 'List 'Dynamic
                    , state
                (:effect/connect) (Op :effect/connect)
                (:reel/reset) (Op :reel/reset)
                (:reel/merge) (Op :reel/merge)
                (:effect/persist) (Op :effect/persist)
                _ $ raise "|Unsupported operation"
              raise "|Expected operation enum"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Op)
            :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |checked-operation-wire-roundtrip)
            :code $ quote $ let
                original $ :: :timedrop/create-one $ {} (:time 1000) (:text |first)
                typed $ decode-op original
              assert= original $ encode-op typed
              assert=
                Op :user/log-in $ [] |Ada |secret
                decode-op $ :: :user/log-in $ [] |Ada |secret
              assert= true $ try
                do
                  decode-op $ :: :user/log-in $ [] |Ada
                  , false
                fn (error) true
              assert= (:: :reel/reset)
                encode-op $ decode-op $ :: :reel/reset
              assert= (:: :reel/merge)
                encode-op $ decode-op $ :: :reel/merge
              assert= (:: :effect/persist)
                encode-op $ decode-op $ :: :effect/persist
            :tags $ #{} :migration :unit
        'decode-optional-string $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-optional-string (raw)
            if (nil? raw) (Option :none)
              if (enum? raw)
                match raw
                  (:none) (Option :none)
                  (:some value)
                    Option :some $ decode-map-as value 'String
                  _ $ raise |Invalid-optional-string
                Option :some $ decode-map-as raw 'String
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Option 'String
        'decode-router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-router (raw)
            decode-map-as (normalize-router raw) 'app.schema/Router
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Router)
            :args $ [] 'Dynamic
        'decode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-store (raw)
            let
                data $ data-map raw
                normalized $ -> data
                  assoc :session $ normalize-session $ .unwrap (get data :session)
                  assoc :user $ normalize-optional-user $ .unwrap (get data :user)
                  assoc :router $ normalize-optional-router-view $ .unwrap (get data :router)
              decode-map-as normalized 'app.schema/Store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |serialized-nominal-diff-patch-recovers-store)
            :code $ quote $ let
                guest $ assoc session :id 7
                before $ Store :logged-in? false :session guest :reel-length 0 :user (Option :none) :router (Option :none) :count 0 :color |#fff
                signed-in $ -> guest
                  assoc :user-id $ Option :some |u
                  assoc :router $ assoc router :name :profile
                view $ UserView :id |u :name |Ada :nickname (Option :none) :avatar $ Option :none
                route $ RouterView :name :profile :timedrops ({}) :members $ {}
                  7 $ Option :some |Ada
                  8 $ Option :none
                after $ Store :logged-in? true :session signed-in :reel-length 0 :user (Option :some view) :router (Option :some route) :count 2 :color |#fff
                changes $ diff-twig before after $ {} (:key :id)
                wire-before $ parse-cirru-edn $ format-cirru-edn before
                wire-changes $ decode-changes $ parse-cirru-edn (format-cirru-edn changes)
                recovered $ match (try-patch-twig wire-before wire-changes)
                  (:ok value) (decode-store value)
                  (:err error)
                    raise $ patch-error-message error
                initial $ decode-store wire-before
              assert= before initial
              assert= after recovered
            :tags $ #{} :migration :unit
        'encode-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn encode-op (op)
            match op
              (:session/connect) (:: :session/connect)
              (:session/disconnect) (:: :session/disconnect)
              (:session/remove-message id)
                :: :session/remove-message $ {} $ :id id
              (:user/log-in credentials) (:: :user/log-in credentials)
              (:user/sign-up credentials) (:: :user/sign-up credentials)
              (:user/log-out) (:: :user/log-out)
              (:router/change route)
                let
                    data $ {}
                      :name $ :name route
                      :data $ :data route
                      :router $ :router route
                  :: :router/change $ .fold (:title route)
                    fn () data
                    fn (title) (assoc data :title title)
              (:timedrop/create-one input)
                :: :timedrop/create-one $ {}
                  :time $ :time input
                  :text $ :text input
              (:timedrop/remove-one id) (:: :timedrop/remove-one id)
              (:states cursor state) (:: :states cursor state)
              (:effect/connect) (:: :effect/connect)
              (:reel/reset) (:: :reel/reset)
              (:reel/merge) (:: :reel/merge)
              (:effect/persist) (:: :effect/persist)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Enum)
            :args $ [] 'app.schema/Op
        'normalize-optional-router-view $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-optional-router-view (raw)
            if (nil? raw) (Option :none)
              if (enum? raw)
                match raw
                  (:none) (Option :none)
                  (:some value)
                    Option :some $ normalize-router-view value
                  _ $ raise |Invalid-optional-router
                Option :some $ normalize-router-view raw
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Option $ :: 'Map 'Tag 'Dynamic
        'normalize-optional-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-optional-user (raw)
            if (nil? raw) (Option :none)
              if (enum? raw)
                match raw
                  (:none) (Option :none)
                  (:some value)
                    Option :some $ normalize-user value
                  _ $ raise |Invalid-optional-user
                Option :some $ normalize-user raw
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Option $ :: 'Map 'Tag 'Dynamic
        'normalize-router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-router (raw)
            without-legacy-nil
              merge
                {} (:name :home) (:data nil) (:router nil)
                data-map raw
              , :title
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'normalize-router-view $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-router-view (raw)
            let
                data $ data-map raw
                timedrops $ decode-map-as
                  .unwrap $ get data :timedrops
                  :: 'Map 'String 'Dynamic
                members $ decode-map-as
                  .unwrap $ get data :members
                  :: 'Map 'Number 'Dynamic
              ->
                assoc data :timedrops $ filter-map-kv timedrops $ fn (id timedrop)
                  MapEntryDecision :keep id $ data-map timedrop
                assoc :members $ filter-map-kv members $ fn (id name)
                  MapEntryDecision :keep id $ decode-optional-string name
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'normalize-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-session (raw)
            let
                data $ data-map raw
                route $ .unwrap-or (get data :router)
                  {} $ :name :home
              -> data (without-legacy-nil :user-id) (without-legacy-nil :nickname)
                assoc :router $ normalize-router route
                assoc :messages $ filter-map-kv
                  decode-map-as
                    .unwrap-or (get data :messages) ({})
                    :: 'Map 'String 'Dynamic
                  fn (id message)
                    MapEntryDecision :keep id $ data-map message
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'normalize-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-user (raw)
            -> (data-map raw) (without-legacy-nil :nickname) (without-legacy-nil :avatar)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            Router :name :home :title (Option :none) :data nil :router nil
          :examples $ []
          :schema $ :: 'app.schema/Router
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            Session :id 0 :user-id (Option :none) :nickname (Option :none) :router router :messages $ {}
          :examples $ []
          :schema $ :: 'app.schema/Session
        'without-legacy-nil $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn without-legacy-nil (data key)
            match
              decode-optional-string $ .unwrap-or (get data key) nil
              (:none) (dissoc data key)
              (:some value) (assoc data key value)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Tag
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require
            recollect.diff :refer $ diff-twig
            recollect.patch :refer $ try-patch-twig patch-error-message
            recollect.schema :refer $ decode-changes
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *client-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Number 'app.schema/Store
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *initial-db
            if (path-exists? storage-file)
              match
                .read-text $ FsPath :value storage-file
                (:ok content) (parse-database content)
                (:err message) (raise message)
              , schema/database
          :examples $ []
          :schema $ :: 'Ref 'app.schema/Db
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'app.schema/Db
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            ReelState :base @*initial-db :db @*initial-db :records ([]) :merged? false
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'app.schema/Db
        '*sync-pending? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *sync-pending? false
          :examples $ []
          :schema $ :: 'Ref 'Bool
        '*tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *tasks ([])
          :examples $ []
          :schema $ :: 'Ref $ :: 'List 'FfiTask
        'changes-for $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn changes-for (old next)
            match old
              (:none)
                diff-twig nil next $ {} $ :key :id
              (:some previous)
                diff-twig previous next $ {} $ :key :id
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Option 'app.schema/Store) 'app.schema/Store
            :return $ :: 'List 'recollect.schema/change-op
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op sid)
            match op
              (:effect/persist)
                when config/dev? $ persist-db!
              _ $ when
                or config/dev? $ match op
                  (:reel/reset) false
                  (:reel/merge) false
                  _ true
                let
                    previous @*reel
                    op-id $ generate-id!
                    op-time $ get-timestamp $ get-time!
                    next $ reel-reducer previous updater op sid op-id op-time config/dev?
                  when config/dev? $ println |Dispatch! sid
                  reset! *reel $ match op
                    (:reel/reset)
                      assoc next :db $ assoc (:db next) :sessions $ :sessions (:db previous)
                    _ next
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.schema/Op 'Number
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-backup-path! ()
            let
                now $ calcit.std.date/extract-time $ get-time!
              join-path calcit-dirname |backups
                str $ .unwrap $ get now :month
                str
                  .unwrap $ get now :day
                  , |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            identity @*reader-reel
            let
                port $ .fold (get-env |port)
                  fn () $ :port config/site
                  fn (raw)
                    .unwrap-or (parse-float raw) (:port config/site)
                server $ run-server! port
                render-timer $ set-interval! 200 $ fn () (render-loop!)
                persist-timer $ set-interval! 600000 $ fn () (persist-db!)
              reset! *tasks $ [] server render-timer persist-timer
              println "|Server started on port:" port
            on-control-c on-exit!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! ()
            .foldl @*tasks &unit $ fn (acc task)
              hint-fn $ {}
                :args $ [] 'Unit 'calcit.core/FfiTask
                :return 'Unit
              .cancel! task
            reset! *tasks $ []
            persist-db!
            quit! 0
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'parse-database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-database (content)
            schema/decode-database $ parse-cirru-edn content
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'String
          :tests $ [] $ %{} 'TestEntry
            :name |nominal-archive-roundtrip-preserves-open-route-data
            :code $ quote $ let
                route $ assoc schema/router :data $ {}
                  :legacy $ [] 1 |two
                session $ -> schema/session (assoc :id 7) (assoc :router route)
                db $ -> schema/database
                  assoc :sessions $ {} $ 7 session
                  assoc :timedrops $ {} $ |t (schema/Timedrop :id |t :time 1000 :text |first)
                restored $ parse-database $ format-cirru-edn db
              assert= db restored
            :tags $ #{} :migration :unit
        'parse-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-op (content)
            schema/decode-op $ parse-cirru-edn content
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Op)
            :args $ [] 'String
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                content $ format-cirru-edn $ assoc (:db @*reel) :sessions ({})
              check-write-file! storage-file content
              check-write-file! (get-backup-path!) content
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            when (not config/dev?) (raise |Reloading-only-happens-in-dev-mode)
            clear-twig-caches!
            reset! *reader-reel @*reel
            sync-clients! @*reader-reel
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            when
              or @*sync-pending? $ not $ identical? @*reader-reel @*reel
              reset! *sync-pending? false
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            wss-serve!
              {} $ :port port
              fn (data)
                match data
                  (:connect sid)
                    dispatch! (schema/Op :session/connect) sid
                  (:message sid content)
                    try
                      dispatch! (parse-op content) sid
                      fn (error) (eprintln |Rejected-client-operation sid error) &unit
                  (:disconnect sid)
                    do (swap! *client-caches dissoc sid)
                      dispatch! (schema/Op :session/disconnect) sid
                  (:blob sid payload) (eprintln |Unsupported-binary-message sid)
                , &unit
              .unwrap-or (get-env |TIMEDROPS_BIND_ADDRESS) |0.0.0.0
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'FfiTask)
            :args $ [] 'Number
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            if (empty? calcit-dirname) (:storage-file config/site)
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ :: 'Dynamic
        'sync-client! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-client! (sid reel)
            when (identical? reel @*reader-reel)
              match
                get
                  :sessions $ :db reel
                  , sid
                (:none) (swap! *client-caches dissoc sid)
                (:some session)
                  let
                      next $ twig-container (:db reel) session $ :records reel
                      changes $ changes-for (get @*client-caches sid) next
                    when
                      not $ empty? changes
                      match
                        wss-send! sid $ format-cirru-edn $ :: :patch changes
                        (:accepted) (swap! *client-caches assoc sid next)
                        (:backpressured) (reset! *sync-pending? true)
                        (:closed) (swap! *client-caches dissoc sid)
                        (:too-large) (eprintln |Patch-exceeds-WebSocket-message-limit sid)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number $ :: 'cumulo-reel.core/ReelState 'app.schema/Db
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel)
            wss-each! $ fn (sid) (sync-client! sid reel)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'cumulo-reel.core/ReelState 'app.schema/Db
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.server
          :require (app.schema :as schema)
            app.updater :refer $ updater
            cumulo-reel.core :refer $ ReelState reel-reducer
            app.config :as config
            app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            recollect.twig :refer $ clear-twig-caches!
            app.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
            calcit.std.time :refer $ set-interval!
            calcit.std.date :refer $ get-time! get-timestamp extract-time
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
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db session records)
            let
                maybe-user $ match (:user-id session)
                  (:none) (Option :none)
                  (:some id)
                    get (:users db) id
                user-view $ .map maybe-user $ fn (user) (twig-user user)
                route $ :router session
                route-view $ .map maybe-user $ fn (user)
                  schema/RouterView :name (:name route) :timedrops
                    if
                      = :home $ :name route
                      :timedrops db
                      {}
                    , :members $ if
                      = :profile $ :name route
                      twig-members (:sessions db) (:users db)
                      {}
              schema/Store :logged-in? (.some? maybe-user) :session session :reel-length (.len records) :user user-view :router route-view :count
                .len $ :sessions db
                , :color $ rand-hex-color!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Db 'app.schema/Session $ :: 'List 'Dynamic
          :tests $ [] $ %{} 'TestEntry
            :name |projection-keeps-domain-model-and-hides-password
            :code $ quote $ let
                user $ schema/User :id |u :name |Ada :nickname (Option :some |Ada) :avatar (Option :none) :password |hash
                session $ assoc (assoc schema/session :id 7) :user-id $ Option :some |u
                db $ assoc
                  assoc schema/database :users $ {} $ |u user
                  , :sessions $ {} (7 session)
                store $ twig-container db session $ []
              assert= true $ :logged-in? store
              assert= |Ada $ :name $ .unwrap (:user store)
              assert= 1 $ :count store
              assert= |u $ :id $ .unwrap (:user store)
              assert=
                schema/UserView :id |u :name |Ada :nickname (Option :some |Ada) :avatar $ Option :none
                .unwrap $ :user store
            :tags $ #{} :migration :unit
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            filter-map-kv sessions $ fn (sid session)
              MapEntryDecision :keep sid $ match (:user-id session)
                (:none) (Option :none)
                (:some id)
                  match (get users id)
                    (:none) (Option :none)
                    (:some user)
                      Option :some $ :name user
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Number 'app.schema/Session) (:: 'Map 'String 'app.schema/User)
            :return $ :: 'Map 'Number $ :: 'Option 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require (app.schema :as schema)
            app.twig.user :refer $ twig-user
            calcit.std.rand :refer $ rand-hex-color!
    'app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user)
            schema/UserView :id (:id user) :name (:name user) :nickname (:nickname user) :avatar $ :avatar user
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/UserView)
            :args $ [] 'app.schema/User
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.user
          :require $ app.schema :as schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
            match op
              (:session/connect) (session/connect db sid op-id op-time)
              (:session/disconnect) (session/disconnect db sid op-id op-time)
              (:session/remove-message id) (session/remove-message db id sid op-id op-time)
              (:user/log-in credentials) (user/log-in db credentials sid op-id op-time)
              (:user/sign-up credentials) (user/sign-up db credentials sid op-id op-time)
              (:user/log-out) (user/log-out db sid op-id op-time)
              (:router/change route) (router/change db route sid op-id op-time)
              (:timedrop/create-one input) (timedrop/create-one db input sid op-id op-time)
              (:timedrop/remove-one id) (timedrop/remove-one db id sid op-id op-time)
              (:states cursor state) db
              (:effect/connect) db
              (:reel/reset) db
              (:reel/merge) db
              (:effect/persist) db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'app.schema/Op 'Number 'String 'Number
          :tests $ []
            %{} 'TestEntry (:name |domain-create-remove-and-session-lifecycle)
              :code $ quote $ let
                  connected $ updater schema/database (schema/Op :session/connect) 7 |connect 1
                  created $ updater connected
                    schema/Op :timedrop/create-one $ schema/TimedropInput :time 1000 :text |first
                    , 7 |t 2
                  timedrop-value $ .unwrap $ get (:timedrops created) |t
                  removed $ updater created (schema/Op :timedrop/remove-one |t) 7 |remove 3
                  disconnected $ updater removed (schema/Op :session/disconnect) 7 |disconnect 4
                assert= 7 $ :id $ .unwrap
                  get (:sessions connected) 7
                assert= |first $ :text timedrop-value
                assert= 1000 $ :time timedrop-value
                assert= (Option :none)
                  get (:timedrops removed) |t
                assert= (Option :none)
                  get (:sessions disconnected) 7
              :tags $ #{} :migration :unit
            %{} 'TestEntry (:name |signup-login-logout-and-private-password)
              :code $ quote $ let
                  connected $ updater schema/database (schema/Op :session/connect) 7 |connect 1
                  registered $ updater connected
                    schema/Op :user/sign-up $ [] |Ada |secret
                    , 7 |u 2
                  logged-out $ updater registered (schema/Op :user/log-out) 7 |logout 3
                  wrong $ updater logged-out
                    schema/Op :user/log-in $ [] |Ada |wrong
                    , 7 |wrong 4
                  logged-in $ updater wrong
                    schema/Op :user/log-in $ [] |Ada |secret
                    , 7 |login 5
                assert= (Option :some |u)
                  :user-id $ .unwrap $ get (:sessions registered) 7
                assert= (Option :none)
                  :user-id $ .unwrap $ get (:sessions logged-out) 7
                assert= (Option :none)
                  :user-id $ .unwrap $ get (:sessions wrong) 7
                assert= 1 $ .len $ :messages
                  .unwrap $ get (:sessions wrong) 7
                assert= (Option :some |u)
                  :user-id $ .unwrap $ get (:sessions logged-in) 7
              :tags $ #{} :migration :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require (app.updater.session :as session) (app.updater.user :as user) (app.updater.router :as router) (app.schema :as schema) (app.updater.timedrop :as timedrop)
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db route sid op-id op-time)
            session/update-session db sid $ fn (current) (assoc current :router route)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'app.schema/Router 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
          :require $ app.updater.session :as session
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'add-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-message (db sid id text)
            update-session db sid $ fn (session)
              assoc session :messages $ assoc (:messages session) id $ schema/Message :id id :text text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Number 'String 'String
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db sid op-id op-time)
            assoc db :sessions $ assoc (:sessions db) sid $ assoc schema/session :id sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Number 'String 'Number
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db sid op-id op-time)
            assoc db :sessions $ dissoc (:sessions db) sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Number 'String 'Number
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db message-id sid op-id op-time)
            update-session db sid $ fn (session)
              assoc session :messages $ dissoc (:messages session) message-id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'String 'Number 'String 'Number
        'update-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-session (db sid f)
            match
              get (:sessions db) sid
              (:some session)
                assoc db :sessions $ assoc (:sessions db) sid $ f session
              (:none) db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Number $ :: 'Fn
              {} (:return 'app.schema/Session)
                :args $ [] 'app.schema/Session
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ app.schema :as schema
    'app.updater.timedrop $ %{} 'FileEntry
      :defs $ {}
        'create-one $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-one (db input sid op-id op-time)
            assoc db :timedrops $ assoc (:timedrops db) op-id $ schema/Timedrop :id op-id :time (:time input) :text (:text input)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'app.schema/TimedropInput 'Number 'String 'Number
        'remove-one $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-one (db id sid op-id op-time)
            assoc db :timedrops $ dissoc (:timedrops db) id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'String 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.timedrop
          :require $ app.schema :as schema
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'find-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn find-user (db username)
            find
              map-list-kv (:users db)
                fn (id user) user
              fn (user)
                = username $ :name user
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Db 'String
            :return $ :: 'Option 'app.schema/User
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db credentials sid op-id op-time)
            let
                username $ .unwrap $ nth credentials 0
                password $ .unwrap $ nth credentials 1
              match (find-user db username)
                (:some user)
                  if
                    = (md5 password) (:password user)
                    session/update-session db sid $ fn (current)
                      assoc current :user-id $ Option :some $ :id user
                    session/add-message db sid op-id $ str "|Wrong password for " username
                (:none)
                  session/add-message db sid op-id $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db (:: 'List 'String) 'Number 'String 'Number
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db sid op-id op-time)
            session/update-session db sid $ fn (current)
              assoc current :user-id $ Option :none
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db 'Number 'String 'Number
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db credentials sid op-id op-time)
            let
                username $ .unwrap $ nth credentials 0
                password $ .unwrap $ nth credentials 1
              match (find-user db username)
                (:some user)
                  session/add-message db sid op-id $ str "|Name is taken: " username
                (:none)
                  let
                      new-user $ schema/User :id op-id :name username :nickname (Option :some username) :avatar (Option :none) :password $ md5 password
                      next-db $ assoc db :users $ assoc (:users db) op-id new-user
                    session/update-session next-db sid $ fn (current)
                      assoc current :user-id $ Option :some op-id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Db)
            :args $ [] 'app.schema/Db (:: 'List 'String) 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require
            calcit.std.hash :refer $ md5
            app.schema :as schema
            app.updater.session :as session
