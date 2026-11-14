
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |recollect/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |alerts.calcit/ |respo-feather.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'app.schema/ClientOp
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ [] |recollect/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit.std/ |calcit-wss/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.browser $ %{} 'FileEntry
      :defs $ {}
        'Dayjs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait Dayjs
            .format $ Fn app.browser/Dayjs String $ -> String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'event-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn event-value (event) (respo.core/event-value event)
          :examples $ []
          :schema $ quote $ Fn respo.schema/RespoEvent (-> String)
        'focus-input! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn focus-input! ()
            match (browser/query-selector |.input)
              (:none) &unit
              (:some input) (browser/element-focus! input)
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'format-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-time (time pattern)
            let
                date $ js-cast (dayjs time) 'app.browser/Dayjs
              .format date pattern
          :examples $ []
          :schema $ quote $ Fn Number String (-> String) (:features :js-ffi)
        'refresh! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn refresh! ()
            browser/location-replace! $ str
              .-origin $ browser/location-host
              , |?time= $ host/now-ms
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.browser
          :require (|dayjs :default dayjs) (js-ffi.browser :as browser) (js-ffi.shared :as host)
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*local-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *local-state
            schema/LocalState :login (schema/LoginState :username | :password |) :dashboard (schema/DashboardState :pop? false :draft | :time 0) :confirming $ #{}
          :examples $ []
          :schema $ quote $ Ref schema/LocalState
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store None
          :examples $ []
          :schema $ quote $ Ref (Option schema/Store)
        '*wire-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *wire-store None
          :examples $ []
          :schema $ quote $ Ref (Option Dynamic)
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect! () (reset! *wire-store None) (reset! *store None)
            ws-connect! (connection-url)
              {}
                :on-open $ fn (event) (simulate-login!)
                :on-close $ fn (event) (reset! *wire-store None) (reset! *store None) (host/console-error! |Lost-connection)
                :on-data on-server-data
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :state)
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
          :schema $ quote $ Fn (-> String) (:features :js-ffi)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (action)
            match action
              (app.schema/LocalOp state-op)
                match state-op
                  (:login state)
                    reset! *local-state $ assoc @*local-state :login state
                  (:dashboard state)
                    reset! *local-state $ assoc @*local-state :dashboard state
                  (:confirm-remove id show?)
                    let
                        confirming $ :confirming @*local-state
                      reset! *local-state $ assoc @*local-state :confirming $ if show? (.include confirming id) (.exclude confirming id)
              (app.schema/Op op)
                match op
                  (:effect/connect) (connect!)
                  _ $ ws-send! $ schema/encode-op op
            , &unit
          :examples $ []
          :schema $ quote $ Fn *dispatch-op (-> Unit) (:features :state)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            connect!
            add-watch! *store :changes $ fn (store previous) (render-app!)
            add-watch! *local-state :changes $ fn (states previous) (render-app!)
            on-page-touch $ fn () $ match @*store
              (:none) (connect!)
              (:some store) &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :state)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ dom/query-selector |.app
          :examples $ []
          :schema $ quote $ Fn (-> respo.dom/DomElement)
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-server-data (data)
            try
              if (enum? data)
                match data
                  (:patch raw-changes)
                    let
                        changes $ decode-changes raw-changes
                        result $ try-patch-twig (.unwrap-or @*wire-store nil) changes
                      match result
                        (:ok candidate)
                          let
                              decoded $ schema/decode-store candidate
                            reset! *wire-store $ Some candidate
                            reset! *store $ Some decoded
                        (:err error)
                          raise $ patch-error-message error
                  _ $ raise |Unsupported-server-message
                raise |Expected-server-message-enum
              fn (error)
                host/console-error! $ str |Rejected-server-patch: error
                hud! |error error
            , &unit
          :examples $ []
          :schema $ quote $ Fn Raw (-> Unit) (:generics Raw) (:features :js-ffi :state)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if
              or (js-present? client-errors) (js-present? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch! *store :changes) (remove-watch! *local-state :changes) (clear-cache!) (render-app!)
                add-watch! *store :changes $ fn (store previous) (render-app!)
                add-watch! *local-state :changes $ fn (states previous) (render-app!)
                println |Code-updated
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! (mount-target)
              fn () $ comp-container @*local-state @*store
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :state)
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
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.client
          :require
            respo.core :refer $ render-with! clear-cache!
            respo.ffi.browser :as dom
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
          :code $ quote $ defcomp comp-container (local-state maybe-store)
            match maybe-store
              (:none) (comp-offline)
              (:some store)
                div
                  {} $ :style $ merge ui/global ui/fullscreen ui/column
                  comp-navigation (:logged-in? store) (:count store)
                  match (:user store)
                    (:none)
                      comp-login $ :login local-state
                    (:some user)
                      match (:router store)
                        (:none) (<> |Missing-route)
                        (:some router)
                          match (:name router)
                            :home $ comp-dashboard (:dashboard local-state) (:confirming local-state) (:timedrops router)
                            :profile $ comp-profile user $ :members router
                            _ $ <> $ str router
                  comp-status-color $ :color store
                  if dev?
                    Some $ comp-inspect |Store store $ {} (:bottom 0) (:left 0) (:max-width |100%)
                    , None
                  comp-messages
                    filter-map-kv
                      :messages $ :session store
                      fn (id message)
                        MapEntryDecision :keep id $ {}
                          :id $ :id message
                          :text $ :text message
                    {}
                    fn (info d!)
                      d! $ app.schema/Op :session/remove-message $ decode-map-as
                        .unwrap $ get info :id
                        , 'String
                  if dev?
                    Some $ comp-dev-reel $ :reel-length store
                    , None
          :examples $ []
          :schema $ quote $ Fn schema/LocalState (Option schema/Store) (-> respo.schema/Component)
        'comp-dev-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-dev-reel (size)
            div
              {} $ :class-name css-reel
              <> $ str "|Length: " size
              space-x 8
              span $ {} (:inner-text |Reset) (:class-name css-click)
                :on-click $ fn (_event d!)
                  hint-fn $ Fn respo.schema/RespoEvent
                    Fn schema/ClientOp $ -> Unit
                    -> Unit
                  d! $ app.schema/Op :reel/reset
              space-x 8
              span $ {} (:inner-text |Merge) (:class-name css-click)
                :on-click $ fn (_event d!)
                  hint-fn $ Fn respo.schema/RespoEvent
                    Fn schema/ClientOp $ -> Unit
                    -> Unit
                  d! $ app.schema/Op :reel/merge
              space-x 8
              span $ {} (:inner-text |Persist) (:class-name css-click)
                :on-click $ fn (_event d!)
                  hint-fn $ Fn respo.schema/RespoEvent
                    Fn schema/ClientOp $ -> Unit
                    -> Unit
                  d! $ app.schema/Op :effect/persist
          :examples $ []
          :schema $ quote $ Fn Number (-> respo.schema/Component)
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
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn schema/ClientOp $ -> Unit
                      -> Unit
                    d! $ app.schema/Op :effect/connect
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ quote $ Fn (-> respo.schema/Component)
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} $ :style
              let
                  size 24
                {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:background-color color) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
          :schema $ quote $ Fn String (-> respo.schema/Component)
        'style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-body
            {} $ :padding "|8px 16px"
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            hsl.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> div span action-> cursor-> button
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ space-x
            app.comp.navigation :refer $ comp-navigation
            app.comp.profile :refer $ comp-profile
            app.comp.login :refer $ comp-login
            respo-message.comp.messages :refer $ comp-messages
            cumulo-reel.comp.reel :refer $ css-reel css-click
            app.config :refer $ dev?
            app.schema :as schema
            app.config :as config
            app.comp.dashboard :refer $ comp-dashboard
    'app.comp.dashboard $ %{} 'FileEntry
      :defs $ {} $ 'comp-dashboard
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-dashboard (state confirming timedrops)
            div
              {} $ :style $ {} (:padding 16)
              div ({})
                button $ {} (:style ui/button) (:inner-text |Drop)
                  :on-click $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn schema/ClientOp $ -> Unit
                      -> Unit
                    d! $ app.schema/LocalOp :dashboard $ schema/DashboardState :pop? true :draft | :time (host/now-ms)
                    browser/set-timeout!
                      fn () $ adapter/focus-input!
                      , 200
                    , &unit
              space-y 16
              keyed-> ({})
                ->
                  map-list-kv timedrops $ fn (id item) item
                  sort $ fn (a b)
                    - (:time b) (:time a)
                  map $ fn (timedrop)
                    keyed-component (:id timedrop)
                      comp-timedrop
                        .includes? confirming $ :id timedrop
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
                            hint-fn $ Fn respo.schema/RespoEvent
                              Fn schema/ClientOp $ -> Unit
                              -> Unit
                            d! $ app.schema/LocalOp :dashboard $ assoc state :draft (adapter/event-value e)
                      space-y 8
                      div
                        {} $ :style ui/row-parted
                        span $ {}
                        button $ {} (:style ui/button) (:inner-text |Submit)
                          :on-click $ fn (e d!)
                            hint-fn $ Fn respo.schema/RespoEvent
                              Fn schema/ClientOp $ -> Unit
                              -> Unit
                            on-close d!
                            d! $ app.schema/Op :timedrop/create-one $ app.schema/TimedropInput :time (:time state) :text (:draft state)
                :pop? state
                fn (d!)
                  d! $ app.schema/LocalOp :dashboard $ assoc state :pop? false
          :examples $ []
          :schema $ quote $ Fn schema/DashboardState (Set String) (Map String schema/Timedrop) (-> respo.schema/Component)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.dashboard
          :require
            hsl.core :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp keyed-> keyed-component <> span div button input
            respo.comp.space :refer $ space-y
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
          :schema $ quote $ Fn String (-> respo.schema/Component)
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
          :code $ quote $ defcomp comp-login (state)
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
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn app.schema/ClientOp $ -> Unit
                          -> Unit
                        d! $ app.schema/LocalOp :login $ assoc state :username (adapter/event-value e)
                  space-y 8
                  div ({})
                    input $ {} (:placeholder |Password)
                      :value $ :password state
                      :style ui/input
                      :on-input $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn app.schema/ClientOp $ -> Unit
                          -> Unit
                        d! $ app.schema/LocalOp :login $ assoc state :password (adapter/event-value e)
                space-y 8
                div
                  {} $ :style $ {} (:text-align :right)
                  span $ {} (:inner-text "|Sign up")
                    :style $ merge ui/link
                    :on-click $ on-submit (:username state) (:password state) true
                  space-x 8
                  span $ {} (:inner-text "|Log in")
                    :style $ merge ui/link
                    :on-click $ on-submit (:username state) (:password state) false
          :examples $ []
          :schema $ quote $ Fn app.schema/LoginState (-> respo.schema/Component)
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            fn (event dispatch!)
              hint-fn $ Fn respo.schema/RespoEvent
                Fn app.schema/ClientOp $ -> Unit
                -> Unit
              dispatch! $ let
                  credentials $ assert-type ([] username password) (Tuple String String)
                if signup? (app.schema/Op :user/sign-up credentials) (app.schema/Op :user/log-in credentials)
              browser/storage-set! (:storage-key config/site)
                format-cirru-edn $ [] username password
          :examples $ []
          :schema $ quote $ Fn String String Bool
            -> $ Fn respo.schema/RespoEvent
              Fn app.schema/ClientOp $ -> Unit
              -> Unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            respo.core :refer $ defcomp <> div input button span
            respo.comp.space :refer $ space-x space-y
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
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
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/ClientOp $ -> Unit
                      -> Unit
                    d! $ app.schema/Op :router/change $ assoc app.schema/router :name :home
                  :style $ {} $ :cursor :pointer
                <> $ :title config/site
              div
                {}
                  :style $ {} $ :cursor |pointer
                  :on-click $ fn (e d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/ClientOp $ -> Unit
                      -> Unit
                    d! $ app.schema/Op :router/change $ assoc app.schema/router :name :profile
                <> $ if logged-in? |Me |Guest
                space-x 8
                <> $ str count-members
          :examples $ []
          :schema $ quote $ Fn Bool Number (-> respo.schema/Component)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.navigation
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ space-x
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
              space-y 16
              div
                {} $ :style ui/row
                <> |Members:
                space-x 8
                list->
                  {} $ :style ui/row
                  map-list-kv members $ fn (id username)
                    [] id $ div
                      {} $ :style $ {} (:padding "|0 8px")
                        :border $ str "|1px solid " $ hsl 0 0 80
                        :border-radius |16px
                        :margin "|0 4px"
                      <> $ .unwrap-or username |
              space-y 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn schema/ClientOp $ -> Unit
                        -> Unit
                      adapter/refresh!
                  <> |Refresh
                space-x 8
                button
                  {}
                    :style $ merge ui/button $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!)
                      hint-fn $ Fn respo.schema/RespoEvent
                        Fn schema/ClientOp $ -> Unit
                        -> Unit
                      dispatch! $ app.schema/Op :user/log-out
                      browser/storage-remove! $ :storage-key config/site
                  <> "|Log out"
          :examples $ []
          :schema $ quote $ Fn schema/UserView
            Map Number $ Option String
            -> respo.schema/Component
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.profile
          :require
            respo-ui.core :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp list-> <> span div button
            respo.comp.space :refer $ space-x space-y
            app.config :as config
            js-ffi.browser :as browser
            js-ffi.shared :as host
            app.browser :as adapter
    'app.comp.timedrop $ %{} 'FileEntry
      :defs $ {} $ 'comp-timedrop
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-timedrop (show? timedrop)
            div
              {} $ :style $ merge ui/row-parted
                {}
                  :border-bottom $ str "|1px solid " $ hsl 0 0 94
                  :padding "|8px 0"
              span ({})
                <>
                  adapter/format-time (:time timedrop) "|MM:DD HH:mm:ss"
                  {} (:font-size 20) (:font-family ui/font-fancy)
                space-x 8
                <> (:text timedrop)
                  {} (:font-size 12)
                    :color $ hsl 0 0 70
              span
                {}
                  :style $ {}
                    :color $ hsl 0 0 80
                    :cursor :pointer
                  :on-click $ fn (_event d!)
                    hint-fn $ Fn respo.schema/RespoEvent
                      Fn app.schema/ClientOp $ -> Unit
                      -> Unit
                    d! $ app.schema/LocalOp :confirm-remove (:id timedrop) true
                comp-i :x 16 $ hsl 200 80 70
              comp-confirm-modal
                {} $ :text "|Sure to delete?"
                , show?
                  fn (_info d!)
                    d! $ app.schema/Op :timedrop/remove-one $ :id timedrop
                  fn (d!)
                    hint-fn $ Fn
                      Fn app.schema/ClientOp $ -> Unit
                      -> Unit
                    d! $ app.schema/LocalOp :confirm-remove (:id timedrop) false
          :examples $ []
          :schema $ quote $ Fn Bool app.schema/Timedrop (-> respo.schema/Component)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.timedrop
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> span div
            respo.comp.space :refer $ space-x
            app.config :as config
            app.comp.kit :refer $ comp-title
            feather.core :refer $ comp-i
            respo-alerts.core :refer $ comp-confirm-modal
            js-ffi.browser :as browser
            js-ffi.shared :as host
            app.browser :as adapter
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            schema/Site :storage-key |timestops :storage-file |timedrops.cirru :port 11015 :title |Timedrops :icon |http://cdn.tiye.me/logo/timedrops.png :server-folder |tiye.me:servers/timedrops :theme |#eeeeff
          :examples $ []
          :schema $ quote schema/Site
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
          :require $ app.schema :as schema
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'ClientOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ClientOp Op LocalOp
          :examples $ []
          :schema $ quote UnionDef
        'DashboardState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct DashboardState (:pop? Bool) (:draft String) (:time Number)
          :examples $ []
          :schema $ quote StructDef
        'Db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Db
            :sessions $ Map Number app.schema/Session
            :users $ Map String app.schema/User
            :timedrops $ Map String app.schema/Timedrop
          :examples $ []
          :schema $ quote StructDef
        'LocalOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum LocalOp (:login app.schema/LoginState) (:dashboard app.schema/DashboardState) (:confirm-remove String Bool)
          :examples $ []
          :schema $ quote EnumDef
        'LocalState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct LocalState (:login app.schema/LoginState) (:dashboard app.schema/DashboardState)
            :confirming $ Set String
          :examples $ []
          :schema $ quote StructDef
        'LoginState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct LoginState (:username String) (:password String)
          :examples $ []
          :schema $ quote StructDef
        'Message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Message (:id String) (:text String)
          :examples $ []
          :schema $ quote StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:session/connect) (:session/disconnect) (:session/remove-message String)
            :user/log-in $ Tuple String String
            :user/sign-up $ Tuple String String
            :user/log-out
            :router/change app.schema/Router
            :timedrop/create-one app.schema/TimedropInput
            :timedrop/remove-one String
            :states (List Dynamic) Dynamic
            :effect/connect
            :reel/reset
            :reel/merge
            :effect/persist
          :examples $ []
          :schema $ quote EnumDef
        'Router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Router (:name Tag)
            :title $ Option String
            :data Dynamic
            :router Dynamic
          :examples $ []
          :schema $ quote StructDef
        'RouterView $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct RouterView (:name Tag)
            :timedrops $ Map String app.schema/Timedrop
            :members $ Map Number $ Option String
          :examples $ []
          :schema $ quote StructDef
        'Session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Session (:id Number)
            :user-id $ Option String
            :nickname $ Option String
            :router app.schema/Router
            :messages $ Map String app.schema/Message
          :examples $ []
          :schema $ quote StructDef
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Site (:storage-key String) (:storage-file String) (:port Number) (:title String) (:icon String) (:server-folder String) (:theme String)
          :examples $ []
          :schema $ quote StructDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:logged-in? Bool) (:session app.schema/Session) (:reel-length Number)
            :user $ Option app.schema/UserView
            :router $ Option app.schema/RouterView
            :count Number
            :color String
          :examples $ []
          :schema $ quote StructDef
        'Timedrop $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Timedrop (:id String) (:time Number) (:text String)
          :examples $ []
          :schema $ quote StructDef
        'TimedropInput $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct TimedropInput (:time Number) (:text String)
          :examples $ []
          :schema $ quote StructDef
        'User $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct User (:id String) (:name String)
            :nickname $ Option String
            :avatar $ Option String
            :password String
          :examples $ []
          :schema $ quote StructDef
        'UserView $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct UserView (:id String) (:name String)
            :nickname $ Option String
            :avatar $ Option String
          :examples $ []
          :schema $ quote StructDef
        'data-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn data-map (raw)
            if (struct? raw) (&struct:to-map raw)
              decode-map-as raw $ Map Tag Dynamic
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Map Tag Dynamic
            :generics Input
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            Db :sessions ({}) :users ({}) :timedrops $ {}
          :examples $ []
          :schema $ quote Db
        'decode-credentials $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-credentials (raw)
            decode-map-as raw $ Tuple String String
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Tuple String String
            :generics Input
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
                  Map Number Dynamic
                users $ decode-map-as
                  .unwrap $ get data :users
                  Map String Dynamic
                normalized $ -> data
                  assoc :sessions $ filter-map-kv sessions $ fn (id value)
                    MapEntryDecision :keep id $ normalize-session value
                  assoc :users $ filter-map-kv users $ fn (id value)
                    MapEntryDecision :keep id $ decode-user value
                  assoc :timedrops $ decode-timedrop-map $ .unwrap (get data :timedrops)
              decode-map-as normalized 'app.schema/Db
          :examples $ []
          :schema $ quote $ Fn Input (-> Db) (:generics Input)
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
                assert= None $ :avatar user
                assert= None $ :nickname user
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
                  Op :session/remove-message $ if (string? payload) payload $ if
                    and (map? payload)
                      every? (keys payload) tag?
                    decode-map-as
                      .unwrap $ get payload :id
                      , String
                    raise |Invalid-message-removal-payload
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
                    decode-map-as cursor $ List Dynamic
                    , state
                (:effect/connect) (Op :effect/connect)
                (:reel/reset) (Op :reel/reset)
                (:reel/merge) (Op :reel/merge)
                (:effect/persist) (Op :effect/persist)
                _ $ raise "|Unsupported operation"
              raise "|Expected operation enum"
          :examples $ []
          :schema $ quote $ Fn Input (-> Op) (:generics Input)
          :tests $ []
            %{} 'TestEntry (:name |checked-operation-wire-roundtrip)
              :code $ quote $ let
                  original $ :: :timedrop/create-one $ {} (:time 1000) (:text |first)
                  typed $ decode-op original
                assert= original $ encode-op typed
                assert=
                  Op :user/log-in $ assert-type ([] |Ada |secret) (Tuple String String)
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
            %{} 'TestEntry (:name |legacy-message-removal)
              :code $ quote $ let
                  operation $ Op :session/remove-message |msg
                  legacy $ :: :session/remove-message $ {} (:id |msg) (:index 2) (:time 1000) (:token |legacy)
                assert= operation $ decode-op $ :: :session/remove-message |msg
                assert= operation $ decode-op legacy
                assert=
                  :: :session/remove-message $ {} $ :id |msg
                  encode-op operation
                assert= true $ try
                  do
                    decode-op $ :: :session/remove-message $ {} (:id 2)
                    , false
                  fn (_error) true
                assert= true $ try
                  do
                    decode-op $ :: :session/remove-message $ {} (:id |msg) (|extension 2)
                    , false
                  fn (_error) true
              :tags $ #{} :migration :unit
        'decode-optional-string $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-optional-string (raw)
            if (nil? raw) None $ if (enum? raw)
              match raw
                (:none) None
                (:some value)
                  Some $ decode-map-as value 'String
                _ $ raise |Invalid-optional-string
              Some $ decode-map-as raw 'String
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Option String
            :generics Input
        'decode-router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-router (raw)
            let
                data $ merge
                  {} (:name :home) (:data nil) (:router nil)
                  data-map raw
              Router :name
                decode-map-as
                  .unwrap $ get data :name
                  , 'Tag
                , :title
                  .and-then (get data :title) decode-optional-string
                  , :data
                    .unwrap $ get data :data
                    , :router $ .unwrap $ get data :router
          :examples $ []
          :schema $ quote $ Fn Input (-> Router) (:generics Input)
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
          :schema $ quote $ Fn Input (-> Store) (:generics Input)
          :tests $ [] $ %{} 'TestEntry (:name |serialized-nominal-diff-patch-recovers-store)
            :code $ quote $ let
                guest $ assoc session :id 7
                before $ Store :logged-in? false :session guest :reel-length 0 :user None :router None :count 0 :color |#fff
                signed-in $ -> guest
                  assoc :user-id $ Some |u
                  assoc :router $ assoc router :name :profile
                view $ UserView :id |u :name |Ada :nickname None :avatar None
                route $ RouterView :name :profile :timedrops ({}) :members $ {}
                  7 $ Some |Ada
                  8 None
                after $ Store :logged-in? true :session signed-in :reel-length 0 :user (Some view) :router (Some route) :count 2 :color |#fff
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
        'decode-timedrop-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-timedrop-map (raw)
            filter-map-kv
              decode-map-as raw $ Map String Dynamic
              fn (id row)
                MapEntryDecision :keep id $ decode-map-as (data-map row) 'app.schema/Timedrop
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Map String Timedrop
            :generics Input
        'decode-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-user (raw)
            let
                data $ data-map raw
              User :id
                decode-map-as
                  .unwrap $ get data :id
                  , 'String
                , :name
                  decode-map-as
                    .unwrap $ get data :name
                    , 'String
                  , :password
                    decode-map-as
                      .unwrap $ get data :password
                      , 'String
                    , :nickname
                      .and-then (get data :nickname) decode-optional-string
                      , :avatar $ .and-then (get data :avatar) decode-optional-string
          :examples $ []
          :schema $ quote $ Fn Input (-> User) (:generics Input)
        'decode-user-view $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-user-view (raw)
            let
                data $ data-map raw
              UserView :id
                decode-map-as
                  .unwrap $ get data :id
                  , 'String
                , :name
                  decode-map-as
                    .unwrap $ get data :name
                    , 'String
                  , :nickname
                    .and-then (get data :nickname) decode-optional-string
                    , :avatar $ .and-then (get data :avatar) decode-optional-string
          :examples $ []
          :schema $ quote $ Fn Input (-> UserView) (:generics Input)
        'encode-op $ %{} 'CodeEntry
          :doc "|Legacy WebSocket encoding intentionally produces anonymous Cirru EDN enum values."
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
          :schema $ quote $ Fn Op (-> AnyEnum) (:open :reflect)
        'normalize-optional-router-view $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-optional-router-view (raw)
            if (nil? raw) None $ if (enum? raw)
              match raw
                (:none) None
                (:some value)
                  Some $ normalize-router-view value
                _ $ raise |Invalid-optional-router
              Some $ normalize-router-view raw
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Option RouterView
            :generics Input
        'normalize-optional-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-optional-user (raw)
            if (nil? raw) None $ if (enum? raw)
              match raw
                (:none) None
                (:some value)
                  Some $ decode-user-view value
                _ $ raise |Invalid-optional-user
              Some $ decode-user-view raw
          :examples $ []
          :schema $ quote $ Fn Input
            -> $ Option UserView
            :generics Input
        'normalize-router-view $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-router-view (raw)
            let
                data $ data-map raw
                timedrops $ decode-timedrop-map $ .unwrap (get data :timedrops)
                members $ decode-map-as
                  .unwrap $ get data :members
                  Map Number Dynamic
              decode-map-as
                -> (assoc data :timedrops timedrops)
                  assoc :members $ filter-map-kv members $ fn (id name)
                    MapEntryDecision :keep id $ decode-optional-string name
                , 'app.schema/RouterView
          :examples $ []
          :schema $ quote $ Fn Input (-> RouterView) (:generics Input)
        'normalize-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-session (raw)
            let
                data $ data-map raw
                route $ .unwrap-or (get data :router)
                  {} $ :name :home
                messages $ filter-map-kv
                  decode-map-as
                    .unwrap-or (get data :messages) ({})
                    Map String Dynamic
                  fn (id message)
                    MapEntryDecision :keep id $ decode-map-as (data-map message) 'app.schema/Message
              Session :id
                decode-map-as
                  .unwrap $ get data :id
                  , 'Number
                , :user-id
                  .and-then (get data :user-id) decode-optional-string
                  , :nickname
                    .and-then (get data :nickname) decode-optional-string
                    , :router (decode-router route) :messages messages
          :examples $ []
          :schema $ quote $ Fn Input (-> Session) (:generics Input)
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            Router :name :home :title None :data nil :router nil
          :examples $ []
          :schema $ quote Router
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            Session :id 0 :user-id None :nickname None :router router :messages $ {}
          :examples $ []
          :schema $ quote Session
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
          :schema $ quote $ Ref (Map Number schema/Store)
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *initial-db
            if (path-exists? storage-file)
              match
                .read-text $ FsPath :value storage-file
                (:ok content) (parse-database content)
                (:err message) (raise message)
              , schema/database
          :examples $ []
          :schema $ quote $ Ref schema/Db
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reader-reel @*reel
          :examples $ []
          :schema $ quote $ Ref (ReelState schema/Db)
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            ReelState :base @*initial-db :db @*initial-db :records ([]) :merged? false
          :examples $ []
          :schema $ quote $ Ref (ReelState schema/Db)
        '*sync-pending? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *sync-pending? false
          :examples $ []
          :schema $ quote $ Ref Bool
        '*tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *tasks ([])
          :examples $ []
          :schema $ quote $ Ref (List FfiTask)
        'changes-for $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn changes-for (old next)
            match old
              (:none)
                diff-twig nil next $ {} $ :key :id
              (:some previous)
                diff-twig previous next $ {} $ :key :id
          :examples $ []
          :schema $ quote $ Fn (Option schema/Store) schema/Store
            -> $ List recollect.schema/change-op
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
          :schema $ quote $ Fn schema/Op Number (-> Unit) (:features :io :state)
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
          :schema $ quote $ Fn (-> String)
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
          :schema $ quote $ Fn (-> Unit) (:features :io :state)
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! ()
            .foldl @*tasks &unit $ fn (acc task)
              hint-fn $ Fn Unit FfiTask $ -> Unit
              .cancel! task
            reset! *tasks $ []
            persist-db!
            quit! 0
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :state)
        'parse-database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn parse-database (content)
            schema/decode-database $ parse-cirru-edn content
          :examples $ []
          :schema $ quote $ Fn String (-> schema/Db)
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
          :schema $ quote $ Fn String (-> schema/Op)
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                content $ format-cirru-edn $ assoc (:db @*reel) :sessions ({})
              check-write-file! storage-file content
              check-write-file! (get-backup-path!) content
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :state)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            when (not config/dev?) (raise |Reloading-only-happens-in-dev-mode)
            clear-twig-caches!
            reset! *reader-reel @*reel
            sync-clients! @*reader-reel
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :state)
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            when
              or @*sync-pending? $ not $ identical? @*reader-reel @*reel
              reset! *sync-pending? false
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :state)
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
          :schema $ quote $ Fn Number (-> FfiTask) (:features :io :state)
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            if (empty? calcit-dirname) (:storage-file config/site)
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ quote String
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
          :schema $ quote $ Fn Number (ReelState schema/Db) (-> Unit) (:features :io :state)
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel)
            wss-each! $ fn (sid) (sync-client! sid reel)
            , &unit
          :examples $ []
          :schema $ quote $ Fn (ReelState schema/Db) (-> Unit) (:features :io :state)
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
      :defs $ {}
        'LinkStyleValue $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion LinkStyleValue Tag String
          :examples $ []
          :schema $ quote UnionDef
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def link
            {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
          :examples $ []
          :schema $ quote $ Map Tag LinkStyleValue
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
                  (:none) None
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
          :schema $ quote $ Fn schema/Db schema/Session (List HistoryEntry) (-> schema/Store) (:generics HistoryEntry)
          :tests $ [] $ %{} 'TestEntry
            :name |projection-keeps-domain-model-and-hides-password
            :code $ quote $ let
                user $ schema/User :id |u :name |Ada :nickname (Some |Ada) :avatar None :password |hash
                session $ assoc (assoc schema/session :id 7) :user-id $ Some |u
                db $ assoc
                  assoc schema/database :users $ {} $ |u user
                  , :sessions $ {} (7 session)
                store $ twig-container db session $ []
              assert= true $ :logged-in? store
              assert= |Ada $ :name $ .unwrap (:user store)
              assert= 1 $ :count store
              assert= |u $ :id $ .unwrap (:user store)
              assert=
                schema/UserView :id |u :name |Ada :nickname (Some |Ada) :avatar None
                .unwrap $ :user store
            :tags $ #{} :migration :unit
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            filter-map-kv sessions $ fn (sid session)
              MapEntryDecision :keep sid $ match (:user-id session)
                (:none) None
                (:some id)
                  match (get users id)
                    (:none) None
                    (:some user)
                      Some $ :name user
          :examples $ []
          :schema $ quote $ Fn (Map Number schema/Session) (Map String schema/User)
            -> $ Map Number $ Option String
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
          :schema $ quote $ Fn schema/User (-> schema/UserView)
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
          :schema $ quote $ Fn schema/Db schema/Op Number String Number (-> schema/Db)
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
                assert= None $ get (:timedrops removed) |t
                assert= None $ get (:sessions disconnected) 7
              :tags $ #{} :migration :unit
            %{} 'TestEntry (:name |signup-login-logout-and-private-password)
              :code $ quote $ let
                  connected $ updater schema/database (schema/Op :session/connect) 7 |connect 1
                  registered $ updater connected
                    schema/Op :user/sign-up $ assert-type ([] |Ada |secret) (Tuple String String)
                    , 7 |u 2
                  logged-out $ updater registered (schema/Op :user/log-out) 7 |logout 3
                  wrong $ updater logged-out
                    schema/Op :user/log-in $ assert-type ([] |Ada |wrong) (Tuple String String)
                    , 7 |wrong 4
                  logged-in $ updater wrong
                    schema/Op :user/log-in $ assert-type ([] |Ada |secret) (Tuple String String)
                    , 7 |login 5
                assert= (Some |u)
                  :user-id $ .unwrap $ get (:sessions registered) 7
                assert= None $ :user-id $ .unwrap
                  get (:sessions logged-out) 7
                assert= None $ :user-id $ .unwrap
                  get (:sessions wrong) 7
                assert= 1 $ .len $ :messages
                  .unwrap $ get (:sessions wrong) 7
                assert= (Some |u)
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
          :schema $ quote $ Fn app.schema/Db app.schema/Router Number String Number (-> app.schema/Db)
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
          :schema $ quote $ Fn schema/Db Number String String (-> schema/Db)
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db sid op-id op-time)
            assoc db :sessions $ assoc (:sessions db) sid $ assoc schema/session :id sid
          :examples $ []
          :schema $ quote $ Fn schema/Db Number String Number (-> schema/Db)
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db sid op-id op-time)
            assoc db :sessions $ dissoc (:sessions db) sid
          :examples $ []
          :schema $ quote $ Fn schema/Db Number String Number (-> schema/Db)
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db message-id sid op-id op-time)
            update-session db sid $ fn (session)
              assoc session :messages $ dissoc (:messages session) message-id
          :examples $ []
          :schema $ quote $ Fn schema/Db String Number String Number (-> schema/Db)
        'update-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-session (db sid f)
            match
              get (:sessions db) sid
              (:some session)
                assoc db :sessions $ assoc (:sessions db) sid $ f session
              (:none) db
          :examples $ []
          :schema $ quote $ Fn schema/Db Number
            Fn schema/Session $ -> schema/Session
            -> schema/Db
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ app.schema :as schema
    'app.updater.timedrop $ %{} 'FileEntry
      :defs $ {}
        'create-one $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create-one (db input sid op-id op-time)
            assoc db :timedrops $ assoc (:timedrops db) op-id $ schema/Timedrop :id op-id :time (:time input) :text (:text input)
          :examples $ []
          :schema $ quote $ Fn schema/Db schema/TimedropInput Number String Number (-> schema/Db)
        'remove-one $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-one (db id sid op-id op-time)
            assoc db :timedrops $ dissoc (:timedrops db) id
          :examples $ []
          :schema $ quote $ Fn schema/Db String Number String Number (-> schema/Db)
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
          :schema $ quote $ Fn schema/Db String
            -> $ Option schema/User
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db credentials sid op-id op-time)
            let
                username $ nth credentials 0
                password $ nth credentials 1
              match (find-user db username)
                (:some user)
                  if
                    = (md5 password) (:password user)
                    session/update-session db sid $ fn (current)
                      assoc current :user-id $ Some $ :id user
                    session/add-message db sid op-id $ str "|Wrong password for " username
                (:none)
                  session/add-message db sid op-id $ str "|No user named: " username
          :examples $ []
          :schema $ quote $ Fn schema/Db (Tuple String String) Number String Number (-> schema/Db)
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db sid op-id op-time)
            session/update-session db sid $ fn (current) (assoc current :user-id None)
          :examples $ []
          :schema $ quote $ Fn schema/Db Number String Number (-> schema/Db)
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db credentials sid op-id op-time)
            let
                username $ nth credentials 0
                password $ nth credentials 1
              match (find-user db username)
                (:some user)
                  session/add-message db sid op-id $ str "|Name is taken: " username
                (:none)
                  let
                      new-user $ schema/User :id op-id :name username :nickname (Some username) :avatar None :password $ md5 password
                      next-db $ assoc db :users $ assoc (:users db) op-id new-user
                    session/update-session next-db sid $ fn (current)
                      assoc current :user-id $ Some op-id
          :examples $ []
          :schema $ quote $ Fn schema/Db (Tuple String String) Number String Number (-> schema/Db)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require
            calcit.std.hash :refer $ md5
            app.schema :as schema
            app.updater.session :as session
