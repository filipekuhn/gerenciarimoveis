App.properties = App.cable.subscriptions.create "PropertyChannel",
  connected: ->
    console.log "connected"
    # Called when the subscription is ready for use on the server

  disconnected: ->
    console.log "disconnected"
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log "received: "
    console.log data

    text = " " + data.count.toString();

    return unless data.lenght > 0
      document.getElementById("property-#{data.id}").innerHTML= text
