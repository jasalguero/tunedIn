`import Channel from 'appkit/models/channel'`
`import Broadcast from 'appkit/models/broadcast'`

APIWrapper =
	getAllChannels: ->
		return new Ember.RSVP.Promise( (resolve, reject) => 
			$.get('http://api.gettuned.in/epg/test?limit=10')
			.then( (data, status) =>
				if (data.success == true)
					channels = @processAllChannels data.data
					Ember.run null, resolve, channels 
			)
		)	

	processAllChannels: (data) ->
		channels = Em.A()
		for key,value of data
			channel = Channel.create value.channel
			channel.set('broadcasts', @processBroadcasts(value.broadcasts))
			channels.push(channel)
		channels

	processBroadcasts: (data) ->
		broadcasts = Em.A()
		data.forEach( (elem) =>
			broadcasts.pushObject (Broadcast.create elem)
		)
		broadcasts


`export default APIWrapper`