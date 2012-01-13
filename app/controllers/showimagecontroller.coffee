SocketController = require "controllers/socketcontroller"

class ShowImageController extends SocketController

	constructor:->
		super
		$('#info').text('Waiting for data...')

	initEventListener:->
		super

		#listener to showimgdata
		@socket.on 'showimgdata', (data) ->
			#img = $('#show-img').get 0
			img = "<img src='images/webcam.jpeg' />" 

			message
			try
				img.width = data.width;
				img.height = data.height;
				img.src = data.source;

				message = ''

			catch error
				console.log error
				message = 'error receiving image data...'


			setInterval ->
				cacherandom = Math.floor(Math.random()*100)*10+Math.random() 
				cachevar = "?cache=" + cacherandom
				myimg = "images/webcam.jpeg" + cachevar
				$('#show-img').attr 'src',  myimg
			, 	4000


module.exports = ShowImageController
