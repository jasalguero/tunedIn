`import apiwrapper from 'appkit/helpers/apiwrapper'`

ChannelRoute = Em.Route.extend
 model: ->
 	apiwrapper.getAllChannels()



`export default ChannelRoute`