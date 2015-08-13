# This imports all the layers for "login" into loginLayers
sk = Framer.Importer.load "imported/login"

sk.message.opacity = 0

message = new Animation({
	layer: sk.message,
	properties: {opacity: 1, y: 512},
	curve: "spring(500, 20, 0)"
})

buttonWiggle = new Animation({
	layer: sk.button
	properties: {y:552 + 8},
	curve: "spring(1000, 15, 0)"
})

sk.button.on Events.Click, ->
	message.start()
	buttonWiggle.start()