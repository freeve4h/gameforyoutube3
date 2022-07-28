require("Player")
require("Enemy")
require("stolencode")

function love.load()
    love.window.setMode(800, 600, {resizable = false})
    Player:load()
    Enemy:load()
end

function love.update(dt)
    Player:update(dt)
    Enemy:update(dt)
    if checkCollision(Enemy.xpos, Enemy.ypos, Enemy.Width, Enemy.Height, Player.xpos, Player.ypos, Player.Width, Player.Height) then 
        Player:load()
        Enemy:load() 
    end
end

function love.draw()
    Player:draw()
    Enemy:draw()
end