-- Initialisation des variables globals
if not ritnlib then require("__RitnLib__/defines") end
-- Activation de gvv s'il est présent
if script.active_mods["gvv"] then require(ritnlib.defines.gvv)() end
-- envoie des modules à l'event listener :
local listener = require(ritnlib.defines.event).add_libraries(require("core.modules"))
