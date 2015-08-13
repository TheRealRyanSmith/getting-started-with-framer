# Mail.app Compose New Mail Transition
# Ryan Smith | Smithx.net | @byryan

###
Layers
###

# Set Blured Background Layer
backgroundLayer = new Layer
	width: Screen.width, height: Screen.height
	image: "images/background.png"

# Inbox View
inboxView = new Layer
	width: Screen.width, height: Screen.height
	image: "images/inboxView.png"

# Status Bars
statusBarBlack = new Layer
	width: Screen.width
	height: 40
	image: "images/statusBarBlack.png"
statusBarWhite = new Layer
	width: Screen.width
	height: 40
	image: "images/statusBarWhite.png"
	opacity: 0

# Tap Area for Compose Icon
composeTapArea = new Layer
	maxX: Screen.width, maxY: Screen.height
	width: 112,	height: 96
	opacity: 0
	superLayer: inboxView

# Compose View
composeView = new Layer
	y: Screen.height
	width: Screen.width, height: 1254
	image: "images/composeView.png"

# Tap Area for Cancel Icon
cancelTapArea = new Layer
	width: 200, height: 100
	opacity: 0
	superLayer: composeView


###
Animations
###

# fade black status bar
statusBarBlackAni = new Animation
	layer: statusBarBlack
	properties: { opacity: 0 }
statusBarBlackAniReverse = statusBarBlackAni.reverse()

# fade white status bar
statusBarWhiteAni = new Animation
	layer: statusBarWhite
	properties: { opacity: 1 }
statusBarWhiteAniReverse = statusBarWhiteAni.reverse()

# scale inbox view
inboxViewAni = new Animation
	layer: inboxView
	properties: { scale: 0.92, maxY: Screen.height }
	curve: "spring(150, 22, 0)"
inboxViewAniReverse = inboxViewAni.reverse()

# reposition compose view
composeViewAni = new Animation
	layer: composeView
	properties: { y: 72 }
	curve: "spring(150, 22, 0)"
composeViewAniReverse = composeViewAni.reverse()


###
Events
###

# Tap Compose Icon
composeTapArea.on Events.Click, ->
	inboxViewAni.start()
	statusBarBlackAni.start()
	statusBarWhiteAni.start()
	composeViewAni.start()

# Tap Cancel Button
cancelTapArea.on Events.Click, ->
	inboxViewAniReverse.start()
	statusBarBlackAniReverse.start()
	statusBarWhiteAniReverse.start()
	composeViewAniReverse.start()