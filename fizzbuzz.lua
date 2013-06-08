-- Language: Lua (http://www.lua.org)
-- To run:
-- $ lua fizbuzz.lua
--
for i = 1, 100 do
    if i%3 == 0 then f = "Fizz" else f = "" end
    if i%5 == 0 then b = "Buzz" else b = "" end
    -- Print the message
    print (i .. " " .. f .. b)
end
