local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Joyton = require(ReplicatedStorage.Joyton)

local mapping = Joyton.createMapping({
	Move = {
		label = "Character Movement",
		kind = Joyton.ActionKind.Axis2d,
		defaultBindings = {
			{
				kind = Joyton.InputKind.DPad,
				inputUp = Enum.KeyCode.W,
				inputDown = Enum.KeyCode.S,
				inputLeft = Enum.KeyCode.A,
				inputRight = Enum.KeyCode.D,
			},
			{
				kind = Joyton.InputKind.Axis2dAbsolute,
				input = Enum.KeyCode.Thumbstick1,
			},
		},
	},
	Jump = {
		label = "Jump",
		kind = Joyton.ActionKind.OneOff,
		defaultBindings = {
			{
				kind = Joyton.InputKind.Button,
				input = Enum.KeyCode.Space,
			},
			{
				kind = Joyton.InputKind.Button,
				input = Enum.KeyCode.ButtonA,
			},
		},
	},
})