# vector2-light
Light vector class in lua

# Example
```lua
local vector2 = require 'class.vector2'
```

# Functions
#### vector2.new(x ,y)
Creates a new vector

```lua
print(vector2.new()) -- 0, 0
print(vector2.new(0, 0)) -- 0, 0
```
#### Vector2:lerp(vector, a)
Lerps the current vector to the inputted vector with alpha a

```lua
local vectorA = vector2.new(-4, -4)
local vectorB = vector2.new(4, 4)

print( vectorA:lerp(vectorB, 0.5) ) -- 0, 0
print(vectorA) -- -4, -4
```
#### Vector2:toAngle(vector)
Returns the angle from the current vector to the inputted vector

```lua
local vectorA = vector2.new(0, 0)
local vectorB = vector2.new(4, 4)

print( vectorA:toAngle(vectorB) ) -- 0.7853...
print( vectorA:toAngle(vectorB)/math.pi ) -- 0.25
```
