# This imports all the layers for "favorite" into favoriteLayers
sk = Framer.Importer.load "imported/favorite"

# initial setup
sk.heartActive.opacity = 0
sk.heartActive.scale = 0.8

# hide outline heart
heartDefaultAni = new Animation
	layer: sk.heartDefault,
	properties: {opacity: 0, scale: 0.8},
	curve: "spring(200, 10, 0)"

# show pink heart
heartActiveAni = new Animation
	layer: sk.heartActive,
	properties: {opacity: 1, scale: 1},
	curve: "spring(200, 10, 0)"

# make pink heart active when tapping outline heart
sk.heartDefault.on Events.Click, ->
	heartDefaultAni.start()
	heartActiveAni.start()