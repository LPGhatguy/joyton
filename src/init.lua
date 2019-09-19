local makeEnum = require(script.makeEnum)

local Joyton = {}

-- Kinds of semantic inputs that can be handled. These are separate from the
-- actual device used for input.
Joyton.ActionKind = makeEnum("Joyton.ActionKind", {
	-- Triggered and completed, like jumping.
	-- Value of type boolean
	-- TODO: Better name
	"OneOff",

	-- Triggered continuously, like aiming a weapon, even if toggled.
	-- Value of type boolean
	-- TODO: Better name
	"Continuous",

	-- One-dimensional and analog, like throttle in a car.
	-- Value of type number
	"Axis1d",

	-- Two-dimensional and analog, like player movement.
	-- Value of type Vector2
	"Axis2d",
})

-- Kinds of inputs that can come from devices and be mapped into semantically
-- meaningful actions.
Joyton.InputKind = makeEnum("Joyton.InputKind", {
	-- A button, like the space key or A button.
	"Button",

	-- A d-pad-ish input, like an actual d-pad or WASD on a keyboard.
	"DPad",

	-- An absolute single axis input, like triggers on a controller.
	"Axis1dAbsolute",

	-- An absolute dual axis input, like a gamepad stick.
	"Axis2dAbsolute",

	-- A relative dual axis input, like mouse movement.
	"Axis2dRelative",
})

function Joyton.createMapping(options)
	local mapping = {}

	function mapping:loadUserBindings(savedBindings)
		error("not yet implemented")
	end

	function mapping:saveUserBindings()
		error("not yet implemented")
	end

	return mapping
end

return Joyton