# vector2-light
Lightweight vector class in lua

# Example
Require vector2 module
```lua
local vector2 = require('vector2')
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
print(vectorA) -- -4, -4 (lerp doesn't change original value)
```
#### Vector2:toAngle(vector)
Returns the angle from the current vector to the inputted vector

```lua
local vectorA = vector2.new(0, 0)
local vectorB = vector2.new(4, 4)

print( vectorA:toAngle(vectorB) ) -- 0.785398...
print( vectorA:toAngle(vectorB)/math.pi ) -- 0.25

print(vectorA) -- 0, 0 (toAngle doesn't change original value)
```
#### Vector2:unpack()
Returns the x and y values individually

```lua
local vectorA = vector2.new(0, 0)
local x, y = vectorA:unpack()

print(vectorA) -- is a vector2
print({x, y}) -- is a table
print( ({x, y} == vectorA) ) -- false
```
