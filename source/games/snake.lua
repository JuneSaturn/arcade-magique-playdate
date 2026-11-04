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