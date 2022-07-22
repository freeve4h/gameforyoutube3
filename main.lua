require("Player")

function love.load()
    love.window.setMode(800, 600, {resizable = false})
    Player:load()
end

function love.update(dt)
    Player:update(dt)
end

function love.draw()
    Player:draw()
end