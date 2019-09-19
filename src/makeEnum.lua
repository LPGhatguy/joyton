return function(enumName, enumValues)
	local enum = {}

	for _, valueName in ipairs(enumValues) do
		local item = newproxy(true)
		local fullName = ("%s.%s"):format(enumName, valueName)

		getmetatable(item).__tostring = function()
			return fullName
		end

		enum[valueName] = item
	end

	setmetatable(enum, {
		__index = function(_, key)
			error(("%q is not a valid member of the enum %s"):format(tostring(key), enumName), 2)
		end,
		__newindex = function()
			error(("The enum %s cannot be mutated."):format(enumName), 2)
		end,
	})

	return enum
end