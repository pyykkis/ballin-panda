require.config
  paths:
    "jquery": "components/jquery/jquery"

require ['jquery', 'controllers/hello'], ($, hello) ->
  $ ->
    hello.init "dear Friend"
    console.log "Hello world!"
