# This imports all the layers for "InstaProto" into instaprotoLayers
sk = Framer.Importer.load "imported/InstaProto"

# Layer
# sk.keyPhoto.opacity = 0

# Animation
photoZoom = new Animation
	layer: sk.keyPhoto
	properties: {scale: 3}
	curve: "spring(200,18,10)"

fadeContent = new Animation
	layer: sk.content
	properties: {opacity: 0}
	time: 0.2

# photoZoom.start()

# Event
sk.keyPhoto.on Events.Click, ->
	photoZoom.start()
	fadeContent.start()













