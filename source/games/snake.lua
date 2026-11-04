---------------------------------------------------------------------------------------------
--
--   SSSSS  NN   N    AA    K    K  EEEEEE
--  S       N N  N   A  A   K   K   E
--   SSSS   N  N N  AAAAAA  KKKK    EEEEE
--       S  N   NN  A    A  K   K   E
--  SSSSS   N    N  A    A  K    K  EEEEEE
--
--  SNAKE FOR MAGIC ARCADE: MONOCHROME LUA EDITION
--  VERSION 1.00 (ALPHA)
--
--  June Sugg
--
---------------------------------------------------------------------------------------------

local pd <const> = playdate
local gfx <const> = pd.graphics

local CELL <const> = 10
local COLS <const> = 40
local ROWS <const> = 24

-- CONSTS(MACROS) From C
local DIR_UP           <const> = 90
local DIR_LEFT         <const> = 180
local DIR_DOWN         <const> = 270
local DIR_RIGHT        <const> = 0
local DIR_UPPER_LEFT   <const> = 135
local DIR_UPPER_RIGHT  <const> = 45
local DIR_BOTTOM_LEFT  <const> = 225
local DIR_BOTTOM_RIGHT <const> = 315
local SNAKE_MAX_LENGTH <const> = 256
local OBSTACLE_MAX_QTY <const> = 20
