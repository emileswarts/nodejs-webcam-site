SocketController = require "controllers/socketcontroller"

class ShowImageController extends SocketController

	constructor:->
		super
		$('#info').text('')

	initEventListener:->
		super

		#listener to showimgdata
		img = "<img src='images/webcam.jpeg' />" 

		setInterval ->
			cacherandom = Math.floor(Math.random()*100)*10+Math.random() 
			cachevar = "?cache=" + cacherandom
			myimg = "images/webcam.jpeg" + cachevar
			$('#show-img').attr 'src',  myimg
		, 	4000

module.exports = ShowImageController
