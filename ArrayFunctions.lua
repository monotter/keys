--[[
Array Functions Made By Monotter and Dovg
Version: 2
]]
local module = {}

module.new = function(arr)
	local _Table = arr or {}
	local Array = {}
	function Array:keys()
		local keyset = module.new()
		for k,v in pairs(_Table) do
			keyset:set(keyset:length()+1,k)
		end
		return keyset
	end
	function Array:forEach(callback)
		for i in pairs(_Table) do
			callback(_Table[i],i)
		end
	end
	function Array:total(callback)
		local val = nil
		for i in pairs(_Table) do
			val = callback(_Table[i],val)
		end
		return val
	end
	function Array:some(callback)
		local s = {}
		for i in pairs(_Table) do
			local n = callback(_Table[i],i)
			if n then
				return true
			end
		end
		return false
	end
	function Array:every(callback)
		for i in pairs(_Table) do
			local n = callback(_Table[i],i)
			if not n then
				return false
			end
		end
		return true
	end
	function Array:find(callback)
		for i in pairs(_Table) do
			local n = callback(_Table[i],i)
			if n then
				return _Table[i],i
			end
		end
	end
	function Array:filter(callback)
		local arr = module.new()
		for i in pairs(_Table) do
			local n = callback(_Table[i],i)
			if n then
				arr:push(_Table[i])
			end
		end
		return arr
	end
	function Array:includes(b)
		for i in pairs(_Table) do
			if _Table[i] == b then
				return true
			end
		end
		return false
	end
	function Array:reduce(callback)
		local val = _Table[Array:keys(_Table):get(1)]
		local key = Array:keys(_Table):get(1)
		for i in pairs(_Table) do
			local s = callback(_Table[i],val,i,key)
			if(s) then val = _Table[i] key = i end
		end
		return val, key
	end
	function Array:map(callback)
		local val = module.new()
		for i in pairs(_Table) do
			val:set(i,callback(_Table[i],i,val))
		end
		return val
	end
	function Array:random()
		local keys = Array:keys()
		local randomk = keys:get(math.random(keys:length()))
		return _Table[randomk], randomk
	end
	function Array:length()
		return #Array:keys():table()
	end
	function Array:push(e)
		table.insert(_Table,e)
	end
	function Array:remove(key)
		if type(key) == "number" then
			table.remove(_Table, key)
		else
			_Table[key] = nil
		end
	end
	function Array:set(a,b)
		_Table[a] = b
	end
	function Array:get(a)
		return _Table[a]
	end
	function Array:table()
		return _Table
	end
	function Array:keyOf(val)
		local val,key = Array:find(function(_val,_key)
			return val == _val
		end)
		return key
	end
	function Array:reset(tabl)
		_Table = tabl
	end
	function Array:clear()
		Array:reset({})
	end
	function Array:unpack()
		return table.unpack(_Table)
	end
	return Array
end
return module
