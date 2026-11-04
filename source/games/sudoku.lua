local pd <const> = playdate
local gfx <const> = pd.graphics

-- Like static of C
local SIZE <const> = 9
local board = {}
local function isValid(r, c, n)
    -- ...
end

-- Public table (readable & changable on main.lua)
Sudoku = {
    title = "SUDOKU",
    solved = 0,
}




-- Public functions
function Sudoku.enter()
    -- ...
end

function Sudoku.update()
end

-- Load local vals from outside (getter)
function Sudoku.getCell(r, c)
    return board[r][c]
end




-- Main

function Sudoku.main()
    
end