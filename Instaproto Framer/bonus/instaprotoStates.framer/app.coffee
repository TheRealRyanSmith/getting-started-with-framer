# This imports all the layers for "Instaproto" into instaprotoLayers
sk = Framer.Importer.load "imported/Instaproto"

backgroundLayer = new BackgroundLayer
	backgroundColor: "#000"

# Layer
# sk.keyPhoto.opacity = 0

Framer.Defaults.Animation = {
	curve: "spring(200,22,10)"
}

sk.keyPhoto.states.add({
	grid: { scale: 1 }
	zoom: { scale: 3 }
})

sk.content.states.add({
	grid: { opacity: 1 }
	zoom: { opacity: 0 }
})

# Event
sk.keyPhoto.on Events.Click, ->
	sk.keyPhoto.states.next(["zoom","grid"])
	sk.content.states.next(["zoom","grid"])