
try
  copy = localStorage.getItem 'timedrops-storage'
  storage = JSON.parse copy
unless storage?
  storage = []

Vue = require 'vue'

moment = require 'moment'
moment.lang 'en'

Vue.filter 'niceTime', (time) ->
  moment(time).format 'MM-DD HH:mm:ss'
Vue.filter 'toTime', (base, key) ->
  res = moment(@[key]).from moment(base)
  res

app = new Vue
  el: '#app'
  data:
    now: (new Date).toISOString()
    list: storage
    base: (new Date).toISOString()
  methods:
    markTime: ->
      @list.unshift time: @now, note: '...'
    setBase: (base) ->
      @base = base
    baseNow: ->
      @base = @now
    remove: (index) ->
      @$data.list.splice index, 1

setInterval ->
  app.$data.now = (new Date).toISOString()
, 1000

window.onbeforeunload = ->
  storage = JSON.stringify app.$data.list
  localStorage.setItem 'timedrops-storage', storage