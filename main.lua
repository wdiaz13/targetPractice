--LOAD
function love.load()
    button = {}
    button.x = 200
    button.y = 200
    button.size = 40

    button2 = {}
    button2.x = 200
    button2.y = 200
    button2.size = 20

    button3 = {}
    button3.x = 200
    button3.y = 200
    button3.size = 7

    score = 0
    timer = 0

    myFont = love.graphics.newFont(30)
end

--UPDATE
function love.update(dt)
    
end

--DRAW
function love.draw()

    --button1 configs
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", button.x, button.y, button.size)

    --button2 configs
    love.graphics.setColor(1, 1, 1)
    love.graphics.circle("fill", button2.x, button2.y, button2.size)

    --button3 configs
    love.graphics.setColor(1, 0, 0)
    love.graphics.circle("fill", button3.x, button3.y, button3.size)

    --score config
    love.graphics.setFont(myFont)
    love.graphics.setColor(1, 1, 1)
    love.graphics.print(score)
end

--BUTTON PRESS FUNCTION
--(b = "button" to add parameter distinction)
function love.mousepressed(x, y, b, istouch)
    if b == 1 then
        if distanceBetween(button.x, button.y, love.mouse.getX(), love.mouse.getY()) < button.size then
            score = score + 1

            --button randomness
            button.x = math.random(button.size, love.graphics.getWidth() - button.size)
            button.y = math.random(button.size, love.graphics.getHeight() - button.size)
            button2.x = button.x
            button2.y = button.y
            button3.x = button.x
            button3.y = button.y
                
        end
    end
end

--DISTANCE (mouse v. button) FUNCTION
function distanceBetween(x1, y1, x2, y2)
    return math.sqrt((y2 - y1)^2 + (x2 - x1)^2)
end