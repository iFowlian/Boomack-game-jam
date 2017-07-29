local width,height = love.graphics.getDimensions()
local images = require('images')

function love.load()
	dir = 2 --/1 = right/2 = left
	pos_x = 0
	pos_y = 360-32
	power = 100
	speed = 5
	deltaTime = 0
end

function love.draw()
	love.graphics.scale(width/640,height/360)
	love.graphics.setFont(love.graphics.newFont(12))
	
	love.graphics.print("SPEED: "..speed, 0, 0)
	if (dir == 1) then love.graphics.draw(images.p1, pos_x, pos_y)
	elseif (dir == 2) then love.graphics.draw(images.p2, pos_x, pos_y) end 
end

function controls(dt)
	deltaTime = deltaTime + dt
	
	if  love.keyboard.isDown("right") then
		dir = 1
		pos_x = pos_x + speed
	elseif love.keyboard.isDown("left") then
		dir = 2
		pos_x = pos_x - speed
	end
	
end

function love.update(dt)	
	controls(dt)
end