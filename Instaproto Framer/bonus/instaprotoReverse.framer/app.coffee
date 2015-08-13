# This imports all the layers for "Instaproto" into instaprotoLayers
sk = Framer.Importer.load "imported/Instaproto"

# Layer
# sk.keyPhoto.opacity = 0

# Animation
photoZoom = new Animation({
	layer: sk.keyPhoto,
	properties: {scale: 3},
	curve: "spring(200,18,10)"
})

photoZoomReverse = photoZoom.reverse()

fadePhotos = new Animation({
	layer: sk.content
	properties: {opacity: 0}
	time: 0.2
})

fadePhotosReverse = fadePhotos.reverse()

# photoZoom.start()

# Event
sk.keyPhoto.on Events.Click, ->
	photoZoom.start()
	fadePhotos.start()

newLayer = new Layer
	x: 0
	minY: -100
	width: 100
	height: 100
	backgroundColor: "hsla(219,3%,48%,1.0)"

newLayer.on Events.Click, ->
	photoZoomReverse.start()
	fadePhotosReverse.start()