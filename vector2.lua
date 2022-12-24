local vector2 = {}

local function vectorOperations(a, b, operate)
   local data = {a, b}
 
   for i, v in pairs(data) do
     if type(v) == "number" then -- scalar
       data[i] = vector2.new(v, v)
     end
   end
   a, b = unpack(data)

   return operate(a, b)
end

local mt = {
   __mode = "k",
   __metatable = "Vector2",

   __tostring = function(t) return (t.x .. ", " .. t.y) end,
   __sub = function(a, b) return vectorOperations(a, b, function(a1, b1) return vector2.new(a1.x-b1.x, a1.y-b1.y) end) end,
   __add = function(a, b) return vectorOperations(a, b, function(a1, b1) return vector2.new(a1.x+b1.x, a1.y+b1.y) end) end,
   __div = function(a, b) return vectorOperations(a, b, function(a1, b1) return vector2.new(a1.x/b1.x, a1.y/b1.y) end) end,
   __mul = function(a, b) return vectorOperations(a, b, function(a1, b1) return vector2.new(a1.x*b1.x, a1.y*b1.y) end) end,

   __index = function(t, i)
      if (i == 'magnitude') then
         return math.sqrt((t.x^2)+(t.y^2))
      elseif (i == "unit") then
         return vector2.new(t.x/t.magnitude, t.y/t.magnitude)
      end
   end
 }

function vector2.new(x, y)
   local self = setmetatable({}, mt)
   self.x = (x or 0)
   self.y = (y or 0)

    function self:lerp(v, t)
       return self+(v-self)*t
    end
 
    function self:toAngle(v)
       return -math.atan2(v-self) - (math.pi/2)
    end
 
    function self:split()
       return self.x, self.y
    end
   
   return self
 end

return vector2
