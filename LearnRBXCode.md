## Printing
```lua
print("Hello World!")
warn("Hello World!")
error("Hello World!")
game.TestService.Message("Hello World!")
```
Printing Is The Normal Code that Almost Every Executor Uses, Warn, & Error are When Something Either Fails Or Something Went Wrong Now There is Also "Info" The Blue Text In Console Which uses "game.TestService.Message()"
You can Learn More On the Dev Forum-- https://devforum.roblox.com/t/colors-in-the-output-window/51196
![image](https://github.com/user-attachments/assets/521aa3f4-4dd9-4d57-a182-c1704dc7803e)


## Variables
```lua
local Word = "Hello World!"
print(Word)
```
A variable is a named container that stores data used in your game. It can hold numbers, text, true/false values, or references to game objects, making your code dynamic and organized.


## If statements
```lua
if true then
	print("Value was True")
end

if false then
	print("Value was False")
end
```
an "if statement" checks a condition. If the condition is true, the code inside the "if" block runs.  If false, that code is skipped.  "If statements" add decision-making to your scripts.


## Functions
```lua
function printfunction()
	print("Hello World!")
end
printfunction()
```
A function is a reusable block of code that performs a specific task. It can take inputs (arguments) and return a value. Functions help organize code and avoid repetition.

## wait
```lua
task.wait(3)
print("This Print Will Take 3 Seconds to Appear")
```
wait() pauses the execution of a Roblox script for a specified amount of time. It's used to control timing, create delays, or prevent scripts from running too quickly and overloading the game.


## Else
```lua
if game.ServerStorage.Name == "Storage128GB" then
	print("The ServerStorage Has 128 GigaBytes Worth Of Storage")
else
	print("The ServerStorage Has 64 GigaBytes Left Of Sotrage")
end

---

if false then
	print("Value is true")
else
	print("Value was false")
end
```
"else" is used with "if statements."  If the "if" condition is false, the code within the "else" block is executed.  It provides an alternative path of execution when the initial condition is not met.  "Else" improves decision-making in scripts.


## While Loops
```lua
while true do
	print("This is an Infinite Loop")
	wait()
end

-- CRASHES YOUR GAME --

while true do
  print("Hello World!")
end
```
while loop repeatedly executes a block of code as long as a specified condition remains true.  Once the condition becomes false, the loop stops.  while loops are useful for tasks that need to be performed continuously or until a certain event occurs.

## Parameters
```lua
function helloFunction(message)
	print(message)
end
helloFunction("hello")
```
In Roblox, parameters are values passed into a function when it's called. They act as inputs, allowing the function to work with different data each time it runs, making it more versatile.

-- However There are 86 Different Types Of Code In Lua In Roblox There are: 4 Different Types Of Coding Languages Making it

120 Different Types Of Code
Lua: 86
Python: 10
JavaScript: 14
C++: 10

Learn More At: https://www.roblox.com/games/6557769953/Scripting-School
Support Them: https://www.roblox.com/communities/5289403/TwoToned-Studios#!/about
