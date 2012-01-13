SocketController = require "controllers/socketcontroller"

class HomeController extends SocketController

	constructor:->
		super


	initEventListener:->
		super

		$(".my-image").click (event) =>
			img = event.target
			imgdata = @getBase64Image(img)
			@socket.emit 'onimgdata', {  width: img.width, height: img.height, source:imgdata }

	getBase64Image:(img) ->
		canvas = document.createElement "canvas"
		canvas.width = img.width
		canvas.height = img.height
		context = canvas.getContext "2d"
		context.drawImage   img,
							0,
							0

		data = canvas.toDataURL "image/jpeg"

		#return data
		data

module.exports = HomeController
