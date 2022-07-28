Enemy = {}

function Enemy:load()
    Enemy.xpos = 0
    Enemy.ypos = 0
    Enemy.Width = 32
    Enemy.Height = 32
    Enemy.Image = love.graphics.newImage("badguy.png")
    Enemy.Speed = 300
end

function Enemy:update(dt)
    if Player.xpos < Enemy.xpos then 
        Enemy.xpos = Enemy.xpos - Enemy.Speed * dt 
    end
    if Player.xpos > Enemy.xpos then 
        Enemy.xpos = Enemy.xpos + Enemy.Speed * dt 
    end 
    if Player.ypos < Enemy.ypos then 
        Enemy.ypos = Enemy.ypos - Enemy.Speed * dt 
    end
    if Player.ypos > Enemy.ypos then 
        Enemy.ypos = Enemy.ypos + Enemy.Speed * dt 
    end
end

function Enemy:draw()
    love.graphics.draw(Enemy.Image, Enemy.xpos, Enemy.ypos)
end