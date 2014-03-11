
require 'shelljs/make'
{join} = require 'path'
fs = require 'fs'
station = require 'devtools-reloader-station'

station.start()

target.dev = ->
  fs.watch 'jade/', interval: 200, (type, name) ->
    console.log 'change'
    exec 'jade -o ./ -DP jade/index.jade', ->
      console.log 'reload jade'
      station.reload 'repo/timedrops'

  fs.watch 'build/', interval: 200, ->
    station.reload 'repo/timedrops'

  exec 'coffee -o js/ -wbc coffee/', async: yes

  exec 'watchify -o build/build.js -d js/main.js -v', async: yes