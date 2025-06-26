-- Snippets for Love2d 11.5.
-- Sorted as in the love-api:
-- https://love2d-community.github.io/love-api/

local snippets = _G.snippets or {}

snippets.lua = {

conf = [[function love.conf(t)
		t.version = "${1:11.5}"
		t.window.title = "${2:Untitled}"
		t.window.width = ${3:800}
		t.window.height = ${4:600}
end
$0]],

-- love.audio
		getdistancemodel = [[love.audio.getDistanceModel() $0]],
		getorientation = [[love.audio.getOrientation() $0]],
		getposition = [[love.audio.getPosition() $0]],
		getsourcecount = [[love.audio.getSourceCount() $0]],
		getvelocity = [[love.audio.getVelocity() $0]],
		getvolume = [[love.audio.getVolume() $0]],
		newsource = [[love.audio.newSource(${1:file}, ${2:type}) $0]],
		pause = [[love.audio.pause(${1:source}) $0]],
		play = [[love.audio.play(${1:source}) $0]],
		resume = [[love.audio.resume(${1:source}) $0]],
		rewind = [[love.audio.rewind(${1:source}) $0]],
		setdistancemodel = [[love.audio.setDistanceModel(${1:model}) $0]],
		setorientation = [[love.audio.setOrientation(${1:forward_vector_x}, ${2:forward_vector_y}, ${3:forwardvectorz}, ${4:upvectorx}, ${5:upvectory}, ${6:upvectorz}) $0]],
		setposition = [[love.audio.setPosition(${1:x}, ${2:y}, ${3:z}) $0]],
		setvelocity = [[love.audio.setVelocity(${1:x}, ${2:y}, ${3:z}) $0]],
		setvolume = [[love.audio.setVolume(${1:volume}) $0]],
		stop = [[love.audio.stop(${1:source}) $0]],

-- love.event
		eventclear = [[love.event.clear() $0]],
		focus = [[function love.focus(f)
				${1:yourcode}
			end
			$0]],
		poll = [[love.event.poll() $0]],
		pump = [[love.event.pump() $0]],
		push = [[love.event.push(${1:event_name, ...}) $0]],
		quit = [[love.event.quit() $0]],
		wait = [[love.event.wait() $0]],

-- love.font
		newglyphdata = [[love.font.newGlyphData(${1:rasterizer}, ${2:glyph_char_code}) $0]],
		newrasterizer = [[love.font.newRasterizer(${1:imageData}, ${2:glyphs}) $0]],

-- love.filesystem
		append = [[love.filesystem.append(${1:name}, ${2:data}, ${3:size}) $0]],
		createdirectory = [[love.filesystem.createDirectory(${1:name}) $0]],
		directorydropped = [[love.directorydropped(${1:path}) $0]],
		exists = [[love.filesystem.exists(${1:filename}) $0]],
		fsinit = [[love.filesystem.init() $0]],
		getappdatadirectory = [[love.filesystem.getAppdataDirectory() $0]],
		getdirectoryitems = [[love.filesystem.getDirectoryItems(${1:directory}) $0]],
		getidentity = [[love.filesystem.getIdentity() $0]],
		getlastmodified = [[love.filesystem.getLastModified(${1:filename}) $0]],
		getsavedirectory = [[love.filesystem.getSaveDirectory() $0]],
		getsize = [[love.filesystem.getSize(${1:filename}) $0]],
		getuserdirectory = [[love.filesystem.getUserDirectory() $0]],
		getworkingdirectory = [[love.filesystem.getWorkingDirectory() $0]],
		isdirectory = [[love.filesystem.isDirectory(${1:filename}) $0]],
		isfile = [[love.filesystem.isFile(${1:filename}) $0]],
		isfused = [[love.filesystem.isFused() $0]],
		lines = [[love.filesystem.lines(${1:name}) $0]],
		load = [[love.filesystem.load(${1:name}) $0]],
		mount = [[love.filesystem.mount(${1:archive}, ${2:mountpoint}) $0]],
		newfile = [[love.filesystem.newFile(${1:filename}) $0]],
		newfiledata = [[love.filesystem.newFileData(${1:filepath}) $0]],
		read = [[love.filesystem.read(${1:name_and_path}, ${2:size}) $0]],
		remove = [[love.filesystem.remove(${1:name}) $0]],
		setidentity = [[love.filesystem.setIdentity(${1:name}) $0]],
		setsource = [[love.filesystem.setSource(${1:path}) $0]],
		unmount = [[love.filesystem.unmount(${1:archive}) $0]],
		write = [[love.filesystem.write(${1:name}, ${2:data}, ${3:size}) $0]],

-- love.gamepad
		gamepadaxis = [[function love.gamepadaxis(${1:joystick}, ${2:axis})end $0]],
		gamepadpressed = [[function love.gamepadpressed(${1:joystick}, ${2:axis})end $0]],
		gamepadreleased = [[function love.gamepadreleased(${1:joystick}, ${2:axis})end $0]],

-- love.graphics
		arc = [[love.graphics.arc(${1:mode}, ${2:x}, ${3:y}, ${4:radius}, ${5:angle1}, ${6:angle2}, ${7:segments}) $0]],
		circle = [[love.graphics.circle(${1:mode}, ${2:x}, ${3:y}, ${4:radius}, ${5:segments}) $0]],
		clear = [[love.graphics.clear() $0]],
		displayrotated =[[love.displayrotated(${1:index}, ${2:orientation} ) $0]],
		draw = [[love.graphics.draw(${1:drawable}, ${2:x}, ${3:y, ...}) $0]],
		getbackgroundcolor = [[love.graphics.getBackgroundColor() $0]],
		getblend = [[love.graphics.getBlendMode() $0]],
		getcanvas = [[love.graphics.getCanvas() $0]],
		getcolor = [[love.graphics.getColor() $0]],
		getdimensions = [[love.graphics.getDimensions() $0]],
		getfilter = [[love.graphics.getDefaultFilter() $0]],
		getfont = [[love.graphics.getFont() $0]],
		getheight = [[love.graphics.getHeight() $0]],
		getlinejoin = [[love.graphics.getLineJoin() $0]],
		getlinestyle = [[love.graphics.getLineStyle() $0]],
		getlinewidth = [[love.graphics.getLineWidth() $0]],
		getmask = [[love.graphics.getColorMask() $0]],
		getmaximagesize = [[love.graphics.getMaxImageSize() $0]],
		getmaxpointsize = [[love.graphics.getMaxPointSize() $0]],
		getpointsize = [[love.graphics.getPointSize() $0]],
		getpointstyle = [[love.graphics.getPointStyle() $0]],
		getrendererinfo = [[love.graphics.getRendererInfo() $0]],
		getscissor = [[love.graphics.getScissor() $0]],
		getshader = [[love.graphics.getShader() $0]],
		getwidth = [[love.graphics.getWidth() $0]],
		issupported = [[love.graphics.isSupported(${1:support1...}) $0]],
		line = [[love.graphics.line(${1:x},${2:y},${3:x},${4:y, ...}) $0]],
		newcanvas = [[love.graphics.newCanvas(${1:width, height, texture_type}) $0]],
		newfont = [[love.graphics.newFont(${1:data}, ${2:size}) $0]],
		newimage = [[love.graphics.newImage(${1:file}) $0]],
		newimagefont = [[love.graphics.newImageFont(${1:file], ${2:glyphs}) $0]],
		newmesh = [[love.graphics.newMesh(${1:vertices}, ${2:image}, ${3:mode}) $0]],
		newparticlesystem = [[love.graphics.newParticleSystem(${1:image}, ${2:buffer}) $0]],
		newquad = [[love.graphics.newQuad(${1:x}, ${2:y}, ${3:width}, ${4:height}, ${5:image_width}, ${6:image_height}) $0]],
		newscreenshot = [[love.graphics.newScreenshot(${1:copyAlpha}) $0]],
		newshader = [[love.graphics.newShader(${1:pixel_data},${2:vertex_data}) $0]],
		newspritebatch = [[love.graphics.newSpriteBatch(${1:image}, ${2:size}, ${3:usage_hint}) $0]],
		origin = [[love.graphics.origin() $0]],
		point = [[love.graphics.point(${1:x}, ${2:y}) $0]],
		polygon = [[love.graphics.polygon(${1:mode}, ${2:vertices}) $0]],
		pop = [[love.graphics.pop() $0]],
		present = [[love.graphics.present() $0]],
		print = [[love.graphics.print("${1:text}", ${2:x}, ${3:y}, ${4:r}, ${5:sx}, ${6:sy}, ${7:ox}, ${8:oy}, ${9:kx}, ${10:ky}) $0]],
		printf = [[love.graphics.printf(${1:text}, ${2:x}, ${3:y}, ${4:x_limit}, ${5:align, ...}) $0]],
		push = [[love.graphics.push() $0]],
		rectangle = [[love.graphics.rectangle(${1:mode}, ${2:x}, ${3:y}, ${4:width}, ${5:height}) $0]],
		reset = [[love.graphics.reset() $0]],
		rotate = [[love.graphics.rotate(${1:angle}) $0]],
		scale = [[love.graphics.scale(${1:x_scale}, ${2:y_scale}) $0]],
		setbackgroundcolor = [[love.graphics.setBackgroundColor(${1:Red}, ${2:Green}, ${3:Blue}, ${4:Alpha}) $0]],
		setblend = [[love.graphics.setBlendMode(${1:) $0]],
		setcanvas = [[love.graphics.setCanvas(${1:canvas}) $0]],
		setcolor = [[love.graphics.setColor(${1:Red}, ${2:Green}, ${3:Blue}, ${4:Alpha}) $0]],
		setcolormask = [[love.graphics.setColorMask(${1:Red}, ${2:Green}, ${3:Blue}, ${4:Alpha}) $0]],
		setfilter = [[love.graphics.setDefaultFilter(${1:min}, ${2:mag}, ${3:anisotropy}) $0]],
		setfont = [[love.graphics.setFont(${1:font}) $0]],
		setfont = [[love.graphics.setFont(${1:font}) $0]],
		setinvertedstencil = [[love.graphics.setInvertedStencil(${1:stencil_function}) $0]],
		setlinejoin = [[love.graphics.setLineJoin(${1:join}) $0]],
		setlinestyle = [[love.graphics.setLineStyle(${1:style}) $0]],
		setlinewidth = [[love.graphics.setLineWidth(${1:width}) $0]],
		setpointsize = [[love.graphics.setPointSize(${1:size}) $0]],
		setpointstyle = [[love.graphics.setPointStyle(${1:style}) $0]],
		setscissor = [[love.graphics.setScissor(${1:x}, ${2:y}, ${3:width}, ${4:height}) $0]],
		setstencil = [[love.graphics.setStencil(${1:stencil_function}) $0]],
		shear = [[love.graphics.shear(${1:x_shear}, ${2:y_shear}) $0]],
		translate = [[love.graphics.translate(${1:x_translation}, ${2:y_translation}) $0]],

-- love.image
		iscompressed = [[love.image.isCompressed(${1:filename}) $0]],
		newCompressedData = [[love.image.newCompressedData(${1:filename}) $0]],
		newImageData = [[love.image.newImageData(${1:filename or width, height}) $0]],

-- love.joystick
		getjoystick = [[love.joystick.getJoystick() $0]],
		getjoystickcount = [[love.joystick.getJoystickCount() $0]],
		joystickadded = [[function love.joystickadded(joystick)end $0]],
		joystickaxis = [[function love.joystickaxis(joystick, axis, value)end $0]],
		joystickhat = [[function love.joystickhat(joystick, hat, direction)end $0]],
		joystickpressed = [[function love.joystickpressed(joystick, button)end $0]],
		joystickreleased = [[function love.joystickreleased(joystick, button)end $0]],
		joystickremoved = [[function love.joystickremoved(joystick)end $0]],
		setgamepadmapping = [[love.joystick.setGamepadMapping(guid, button, inputtype, inputindex, hatdir) $0]],

-- love.keyboard
		haskeyrepeat = [[love.keyboard.hasKeyRepeat() $0]],
		hastextinput = [[love.keyboard.hasTextInput() $0]],
		keyboard_isdown = [[love.keyboard.isDown(${1:key}) $0]],
		keypressed = [[function love.keypressed(key) end $0]],
		keypressedr = [[function love.keypressed(key, isrepeat) end $0]],
		keyreleased = [[function love.keyreleased(key) end $0]],
		setkeyrepeat = [[love.keyboard.setKeyRepeat(${1:enable}) $0]],
		settextinput = [[love.keyboard.setTextInput(${1:enable}) $0]],

-- love.math
		getrandomseed = [[love.math.getRandomSeed() $0]],
		isconvex = [[love.math.isConvex(${1:vertices}) $0]],
		newbeziercurve = [[love.math.newBezierCurve(${1:vertices}) $0]],
		newRandomGenerator = [[love.math.newRandomGenerator(${1:) $0]],
		noise = [[love.math.noise(${1:x, y, z, ...}) $0]],
		random = [[love.math.random() $0]],
		randomnormal = [[love.math.randomNormal(${1:standard_deviation}, ${2:mean}) $0]],
		setrandomseed = [[love.math.setRandomSeed(${1:seed}) $0]],
		triangulate = [[love.math.triangulate(${1:vertices}) $0]],

-- love.mouse
		getcursor = [[love.mouse.getCursor() $0]],
		getposition = [[love.mouse.getPosition() $0]],
		getsystemcursor = [[love.mouse.getSystemCursor(${1:cursor_type}) $0]],
		getx = [[love.mouse.getX() $0]],
		gety = [[love.mouse.getY() $0]],
		mouse_isdown = [[love.mouse.isDown(${1:button}) $0]],
		isgrabbed = [[love.mouse.isGrabbed() $0]],
		isvisible = [[love.mouse.isVisible() $0]],
		mousefocus = [[function love.mousefocus(f) end $0]],
		mousepressed = [[function love.mousepressed(x, y, button)end $0]],
		mousereleased = [[function love.mousereleased(x, y, button) end $0]],
		newcursor = [[love.mouse.newCursor(${1:imageData}, ${2:hotspot_x}, ${3:hotspot_y}) $0]],
		setcursor = [[love.mouse.setCursor(${1:cursor}) $0]],
		setgrabbed = [[love.mouse.setGrabbed(${1:grab}) $0]],
		setposition = [[love.mouse.setPosition(${1:x}, ${1:y}) $0]],
		setvisible = [[love.mouse.setVisible(${1:visible}) $0]],
		setx = [[love.mouse.setX(${1:x}) $0]],
		sety = [[love.mouse.setY(${1:y}) $0]],

-- love.physics
		getdistance = [[love.physics.getDistance(${1:fixture1}, ${2:fixture2}) $0]],
		getmeter = [[love.physics.getMeter() $0]],
		newbody = [[love.physics.newBody(${1:world}, ${2:x}, ${3:y}, ${4:type}) $0]],
		newchainshape = [[love.physics.newChainShape(${1:loop}, ${2:x1}, ${3:y1}, ${4:x2}, ${5:y2}) $0]],
		newcircleshape = [[love.physics.newCircleShape(${1:radius}) $0]],
		newdistancejoint = [[love.physics.newDistanceJoint(${1:body1}, ${2:body2}, ${3:x1}, ${4:y1}, ${5:x2}, ${6:y2}, ${7:collide_connected}) $0]],
		newedgeshape = [[love.physics.newEdgeShape(${1:x1}, ${2:y1}, ${3:x2}, ${4:y2}) $0]],
		newfixture = [[love.physics.newFixture(${1:body}, ${2:shape}, ${3:density}) $0]],
		newfrictionjoint = [[love.physics.newFrictionJoint(${1:body1}, ${2:body2}, ${3:x1}, ${4:y1}, ${5:x2}, ${6:y2}, ${7:collide_connected}) $0]],
		newgearjoint = [[love.physics.newGearJoint(${1:joint1}, ${2:joint2}, ${3:ratio}, ${4:collide_connected}) $0]],
		newmousejoint = [[love.physics.newMouseJoint(${1:body}, ${2:x}, ${3:y}) $0]],
		newpolygonshape = [[love.physics.newPolygonShape(${1:x1}, ${2:y1}, ${3:x2}, ${4:y2, ...}) $0]],
		newprismaticjoint = [[love.physics.newPrismaticJoint(${1:body1}, ${2:body2}, ${3:x1}, ${4:y1}, ${5:ax}, ${6:ay}, ${7:collide_connected}) $0]],
		newpulleyjoint = [[love.physics.newPulleyJoint(${1:body1}, ${2:body2}, ${3:gx1}, ${4:gy1}, ${5:gx2}, ${6:gy2}, ${7:x1}, ${8:y1}, ${9:x2}, ${10:y2}, ${11:collide_connected}) $0]],
		newrectangleshape = [[love.physics.newRectangleShape(${1:width}, ${2:height}) $0]],
		newrevolutejoint = [[love.physics.newRevoluteJoint(${1:body1}, ${2:body2}, ${3:x}, ${4:y}, ${5:collide_connected}) $0]],
		newropejoint = [[love.physics.newRopeJoint(${1:body1}, ${2:body2}, ${3:x1}, ${4:y1}, ${5:x2}, ${6:y2}, ${7:max_length}, ${8:collide_connected}) $0]],
		newweldjoint = [[love.physics.newWeldJoint(${1:body1}, ${2:body2}, ${3:x}, ${4:y}, ${5:collide_connected}) $0]],
		newwheeljoint = [[love.physics.newWheelJoint(${1:body1}, ${2:body2}, ${3:x}, ${4:y}, ${5:anchor_x}, ${6:anchor_y}, ${7:collide_connected}) $0]],
		newworld = [[love.physics.newWorld(${1:x_gravity}, ${2:y_gravity}, ${3:sleep}) $0]],
		setmeter = [[love.physics.setMeter(${1:scale}) $0]],

-- love.sound
		newdecoder = [[love.sound.newDecoder(${1:file}, ${2:buffer}) $0]],
		newsounddata = [[love.sound.newSoundData(${1:file}) $0]],

-- love.system
		getclipboardtext = [[love.system.getClipboardText() $0]],
		getos = [[love.system.getOS() $0]],
		getpowerinfo = [[love.system.getPowerInfo() $0]],
		getprocessorcount = [[love.system.getProcessorCount() $0]],
		setclipboardtext = [[love.system.setClipboardText(${1:text}) $0]],

-- love.thread
		newchannel = [[love.thread.newChannel() $0]],
		newthread = [[love.thread.newThread(${1:filename}) $0]],
		getChannel = [[love.thread.getChannel(${1:name}) $0]],

-- love.timer
		getaveragedelta = [[love.timer.getAverageDelta() $0]],
		getdelta = [[love.timer.getDelta() $0]],
		getfps = [[love.timer.getFPS() $0]],
		gettime = [[love.timer.getTime() $0]],
		sleep = [[love.timer.sleep(${1:seconds}) $0]],
		step = [[love.timer.step() $0]],

-- love.window
		getdesktopdimensions = [[love.window.getDesktopDimensions(${1:display}) $0]],
		getdimensions = [[love.window.getDimensions() $0]],
		getfullscreen = [[love.window.getFullscreen() $0]],
		getfullscreenmodes = [[love.window.getFullscreenModes() $0]],
		geticon = [[love.window.getIcon() $0]],
		getmode = [[love.window.getMode() $0]],
		gettitle = [[love.window.getTitle() $0]],
		getwidth = [[love.window.getWidth() $0]],
		hasfocus = [[love.window.hasFocus() $0]],
		hasmousefocus = [[love.window.hasMouseFocus() $0]],
		iscreated = [[love.window.isCreated() $0]],
		isvisible = [[love.window.isVisible() $0]],
		resize = [[function love.resize(w, h)end $0]],
		setfullscreen = [[love.window.setFullscreen(fullscreen) $0]],
		seticon = [[love.window.setIcon(${1:imageData}) $0]],
		setmode = [[love.window.setMode(${1:width}, ${2:height}, ${3:flags}) $0]],
		settitle = [[love.window.setTitle(${1:title}) $0]],
		windowgetheight = [[love.window.getHeight() $0]],

-- misc
init = [[function love.load()

end

function love.update(dt)

end

function love.draw()

end
]],

quit = [[function love.quit()end $0]],

["repeat"] = [[repeat ${1:expression}  until ${2:limit}
		${3:actions}
end
$0]],

run = [[function love.run() end $0]],

textinput = [[function love.textinput(text)end $0]],

threaderror = [[love.threaderror(thread, errorstr)end $0]],

visible = [[love.visible(v)end $0]],

["while"] = [[while ${1:exp} do
		${2:actions}
end
$0]],

fndraw = [[function love.draw()
		${1:yourcode}
end
$0]],

["else"] = [[else
$0]],

["elseif"] = [[elseif ${1:expression} then
		${2:actions}
end
$0]],

errhand = [[function love.errhand(msg)
		${1:yourcode}
end
$0]],


["for"] = [[for ${1:var=start}, ${2:limit}, ${3:step} do
		${4:actions}
end
$0]],

["function"] = [[function ${1:name}(${2:arguments})
		${3:actions}
end
$0]],

["if"] = [[if  ${1:expression} then
		${2:actions}
end
$0]],

}

return snippets
