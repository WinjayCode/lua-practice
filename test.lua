-- http://www.runoob.com/lua/lua-variables.html 在线学习网站

-- print("hello world")

-- 函数
-- function fact( n )
-- 	if n == 0 then
-- 		return 1
-- 	else 
-- 		return n * fact(n-1)
-- 	end
-- end

-- print("enter a number:")
-- a = io.read("*number")
-- print(fact(a))



-- function norm(x, y)
-- 	local n2 = x^2 + y^2
-- 	return math.sqrt(n2)
-- end

-- function twice(x)
-- 	return 2*x
-- end

-- > dofile("lib1.lua")
-- > n = norm(3.4, 1.0)
-- > print(twice(n))

-- 注释
--[[
print(b)
b = 10
print(b)
b = nil
print(b)
--]]


-- 基本数据类型
-- print(type("hello world"))
-- print(type(10.4*3))
-- print(type(print))
-- print(type(type))
-- print(type(true))
-- print(type(nil))
-- print(type(type(X)))



-- print(type(a))
-- a = 10
-- print(type(a))
-- a = "a string!!"
-- print(type(a))
-- a = print
-- a(type(a))


-- 字串替换
-- a = "one string"
-- b = string.gsub(a, "one", "another")
-- print(a)
-- print(b)


-- 转义序列
-- print("one line\nnext line\n\"in quotes\", 'in quotes'")
-- print('a backslash inside quotes:\'\\\'')
-- print("a simpler way: '\\'")


-- demo有问题
-- page = [[
-- <HTML>
-- <HEAD>
-- <TITLE>An HTML Page</TITLE>
-- </HEAD>

-- <BODY>
-- Lua
-- [[a text between double brackets]]
-- </BODY>
-- </HTML>
-- ]]

-- io.write(page)


-- ..标识连接符
-- print(10 .. 20) --> 1020


-- string 转 number
-- line = io.read()  -- read a line
-- n = tonumber(line) -- try to convert it to a number
-- if n == nil then
-- 	error(line .. " is not a valid number")
-- else 
-- 	print(n * 2)
-- end


-- number 转 string
-- print(tostring(10) == "10")  --> true
-- print(10 .. "" == "10")  --> true


-- 逻辑运算符
-- print(4 and 5) --> 5
-- print(nil and 13)   --> nil
-- print(false and 13)   --> false
-- print(4 or 5)   --> 4
-- print(false or 5)   -->5


-- not
-- print(not nil)   --> true
-- print(not false)   --> true
-- print(not 0)   --> false
-- print(not not nil)   --> false


-- 连接运算符
-- print("hello " .. "world")   --> hello world
-- print(0 .. 1)   --> 01


-- 表
-- days = {"Sundy", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
-- print(days[4])



-- w = {x = 0, y = 0, lable = "console"}
-- x = {sin(0), sin(1), sin(2)}
-- w[1] = "another field"
-- x.f = w
-- print(w["x"])   --> 0
-- print(w[1])   --> another field
-- print(x.f[1])   --> another field
-- w.x = nil   --> remove another field


-- list
-- list = nil
-- for line in io.lines() do
-- 	list = {next = list, value = line}
-- end

-- l = list
-- while l do
-- 	print(l.value)
-- end


-- 构造函数
-- polyline = {color = "blue", thickness = 2, npoints = 4,
-- 	{x = 0, y = 0},
-- 	{x = -10, y = 0},
-- 	{x = -10, y = 1},
-- 	{x = 0, y = 1}
-- }
-- print(polyline[2].x)   --> -10


-- 构造函数
-- openames = {["+"] = "add", ["-"] = "sub",
-- 			["*"] = "mul", ["/"] = "div"}
-- i = 20; s = "-"
-- a = {[i + 0] = s, [i + 1] = s..s, [i + 2] = s..s..s}
-- print(openames[s])  --> sub
-- print(a[22])


-- for循环
-- local tbl = {"apple", "pear", "orange", "grape"}
-- for key, val in pairs(tbl) do
--     print("Key", val)
-- end


-- table
-- a = {}
-- a["key"] = "value"
-- key = 10
-- a[key] = 22
-- a[key] = a[key] + 11
-- for k, v in pairs(a) do
-- 	print(k .. " : " .. v)
-- end


-- table长度自动增长
-- a = {}
-- for i = 1, 10 do
-- 	a[i] = i
-- end
-- a["key"] = "val"
-- print(a["key"])
-- print(a["none"])
-- print(a[3])


-- function fun1(n)
-- 	if n == 0 then
-- 		return 1
-- 	else
-- 		return n * fun1(n - 1)
-- 	end
-- end
-- print(fun1(3))
-- fun2 = fun1
-- print(fun2(3))


-- 匿名函数
-- function testFun(tab, fun)
-- 	for k, v in pairs(tab) do
-- 		print(fun(k, v))
-- 	end
-- end

-- tab = {key1 = "val1", key2 = "val2"}
-- testFun(tab, 
-- function(key, val) -- 匿名函数
-- 	return key.."="..val;
-- end)

-- # 输出字符串所占的字节数
-- print(#"HelloWorld") -- 10
-- print(#"你")  -- windows(2) mac(3)


-- 变量
-- a = 5  -- 全局变量
-- local b = 5  -- 局部变量

-- function joke()
-- 	c = 5  --  全局变量
-- 	local d = 6 -- 局部变量
-- end

-- joke()
-- print(c, d)  --> 5 nil

-- do
-- 	local a = 6  -- 局部变量
-- 	b = 6  -- 对局部变量重新赋值
-- 	print(a, b)  --> 6 6
-- end

-- print(a, b)  --> 5 6



-- 赋值等价表达式
-- a, b = 10, 2  <--> a = 10; b = 2


