import "CoreLibs/graphics"
import "CoreLibs/timer"
require "games/minesweeper"
require "games/snake"
require "games/sudoku"

local pd <const> = playdate
local gfx <const> = pd.graphics

local lang = "ko"
local sceneNum = 0

UI = {
    browseMode = true,
    menu = 0,
    cursor = 0,
}

Coordinates = {
    x = 0,
    y = 0,
}



local function handleInput()
    if UI.browseMode == true then
        if pd.buttonJustPressed(pd.kButtonLeft)  then
        end
        if pd.buttonJustPressed(pd.kButtonRight) then
        end
        if pd.buttonJustPressed(pd.kButtonUp)    then
            if UI.menu == 0 then
                if UI.cursor > 1 then
                    UI.cursor = UI.cursor - 1
                end
            elseif UI.menu == 1 then
            elseif UI.menu == 2 then
            elseif UI.menu == 3 then
            elseif UI.menu == 4 then
            elseif UI.menu == 5 then
            end
        end
        if pd.buttonJustPressed(pd.kButtonDown)  then
            if UI.menu == 0 then
                if UI.cursor < 4 then
                    UI.cursor = UI.cursor + 1
                end
            elseif UI.menu == 1 then
            elseif UI.menu == 2 then
            elseif UI.menu == 3 then
            elseif UI.menu == 4 then
            elseif UI.menu == 5 then
            end
        end
        if pd.buttonJustPressed(pd.kButtonA)     then
        end
        if pd.buttonJustPressed(pd.kButtonB)     then
        end
    end
end




----------------------------------------------------------------
--- Scenes
----------------------------------------------------------------

-- Initialization Scene
local function init_scene()
    gfx.setBackgroundColor(gfx.kColorBlack)

end

-- Boot Scene
local lx, ly = 200, 120
local lAngle = 0
local function boot_scene(scene)
    if scene == 0 then
        -- June Saturn Logo
        pd.timer.performAfterDelay(1000, function() sceneNum = 1 end)
        gfx.setBackgroundColor(gfx.kColorBlack)
        local logoJuneSaturn = gfx.image.new("images/logo_junesaturn")
        assert(logoJuneSaturn, "Cannot load images/logo_junesaturn.png")
        logoJuneSaturn:drawCentered(lx, ly)
    elseif scene == 1 then
        -- Magic Arcade Logo
        gfx.setBackgroundColor(gfx.kColorWhite)
        local logoArcadeMagique = gfx.image.new("images/player")
        assert(logoArcadeMagique, "Cannot load images/player.png")
        logoArcadeMagique:drawRotated(lx, ly, lAngle)

        local info = string.format("MENU: %d   CURSOR: %d", UI.menu, UI.cursor)
        gfx.drawTextAligned(info, 390, 8, kTextAlignment.right)

        handleInput()
    end
end



----------------------------------------------------------------
--- Main update loops
----------------------------------------------------------------
function pd.update()
    gfx.clear()

    init_scene()
    boot_scene(sceneNum)

    Sudoku.update();

    pd.timer.updateTimers()
end