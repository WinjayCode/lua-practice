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


-- 可变参数
-- function add( ... )
-- local s = 0
-- 	for i, v in pairs{...} do --> {...} 表示一个由所有变长参数构成的数组
-- 		s = s + v
-- 	end
-- 	return s
-- end

-- print(add(3,4,5,6,7))


-- 可变参数赋值给变量
-- function average( ... )
-- 	result = 0
-- 	local arg = {...}  --> arg 为一个表，局部变量
-- 	for i, v in pairs(arg) do
-- 		result = result + v
-- 	end
-- 	print("总共传入 " .. #arg .. " 个数")
-- 	return result/#arg
-- end

-- print("平均值为", average(10, 5, 3, 4, 5, 6))


-- 获取可变参数的数量
-- function average( ... )
-- 	result = 0
-- 	local arg = {...}
-- 	for i, v in ipairs(arg) do
-- 		result = result + v
-- 	end
-- 	print("总共传入 " .. select("#", ...) .. " 个数")
-- 	return result/select("#", ...)
-- end

-- print("平均值为", average(10, 5, 3, 4, 5, 6))


-- 固定参数+可变参数
-- function fwrite(fmt, ... )  --> 固定参数fmt
-- 	return io.write(string.format(fmt, ...))
-- end

-- fwrite("lalalal\n")  --> fmt = "lalalal",没有变长参数
-- fwrite("%d%d\n", 1, 2)  --> fmt = "%d%d", 变长参数为 1 和 2



-- select(i, ...)返回...中的第i个参数
-- do
-- 	function foo( ... )
-- 		for i = 1, select('#', ...) do  -->获取参数总数
-- 			local arg = select(i, ...)  -->读取参数
-- 			print("arg", arg)
-- 		end
-- 	end

-- 	foo(1, 2, 3, 4)
-- end


-- 字符串操作
-- print(string.upper("abc"))  --> 转换为大写字母
-- print(string.lower("ABC"))  --> 转换为小写字母
-- print(string.gsub("abc", "a", "b", 1))  --> 替换字符串
-- print(string.find("Hello World Lua", "Lua"))  --> 查找字符串并返回索引
-- print(string.reverse("Lua"))  --> 字符串反转
-- print(string.format("value is:%d", 4))  --> 格式化
-- print(string.char(97, 98, 99, 100))  --> 整数转字符
-- print(string.byte("ABCD", 4))  --> 字符转整数
-- print(string.byte("ABCD"))  --> 字符转整数，默认转第一个字符
-- print(string.len("abc"))  --> 计算字符串长度
-- print(string.rep("abc", 2))  --> 字符串拷贝
-- print("a" .. "b")  --> 字符串连接
-- for word in string.gmatch("Hello Lua User", "%a+") do print(word) end  --> 字符串匹配，%a+表示整个字母，%a表示单个字符
-- print(string.match("I have 2 question for you.", "%d+ %a+"))  --> 查找第一个匹配
-- print(string.format("%d, %q", string.match("I have 2 question for you.", "(%d+) (%a+)")))
-- date = 8; month = 4; year = 2019
-- print(string.format("日期格式化 %02d/%02d/%03d", date, month, year))  --> 格式化

-- print(string.format("%c", 83))  --> ASCII转化
-- print(string.format("%+d", 17.0))
-- print(string.format("%05d", 17))
-- print(string.format("%o", 17))  --> 转为八进制
-- -- print(string.format("%u", 3.14))  --> 转为无符号整数？
-- print(string.format("%x", 13))  --> 转为十六进制小写字母
-- print(string.format("%X", 13))  --> 转为十六进制大写字母
-- print(string.format("%e", 1000))  --> 转为科学计数法格式小写字母e
-- print(string.format("%E", 1000))  --> 转为科学计数法格式大写字母e
-- print(string.format("%6.3f", 13))  --> 转为浮点数
-- print(string.format("%q", "One\nTwo"))  -->转为Lua安全的格式
-- print(string.format("%q", 1))  -->转为Lua安全的格式

-- print(string.format("%s", "monkey"))
-- print(string.format("%10s", "monkey"))
-- print(string.format("%5.3s", "monkey"))

-- print(string.gsub("hello, up-down!", "%A", "."))  --> 替换非字母的字符为.


-- 闭包函数
-- array = {"Lua", "Tutorial"}

-- function elementIterator(collection)
-- 	local index = 0
-- 	local count = #collection
-- 	-- 闭包函数
-- 	return function ()
-- 		index = index + 1
-- 		if index <= count
-- 		then
-- 			-- 返回迭代器的当前元素
-- 			return collection[index]
-- 		end
-- 	end
-- end

-- for element in elementIterator(array)
-- do
-- 	print(element)
-- end


-- table连接
-- fruits = {"banana", "orange", "apple"}
-- print("连接后的字符串：", table.concat(fruits))  --> 返回table连接后的字符串
-- print("连接后的字符串：", table.concat(fruits, ", ")) --> 指定连接字符
-- print("连接后的字符串：", table.concat(fruits, ", ", 2, 3)) --> 指定索引来连接


-- 插入和移除
-- fruits = {"banana", "orange", "apple"}
-- table.insert(fruits, "mango")  --> 在末尾插入 
-- print("索引为4的元素为：", fruits[4])

-- table.insert(fruits, 2, "grapes")
-- print("索引为2的元素为：", fruits[2]) --> 在索引为2的键处插入

-- print("最后一个元素为：", fruits[5])

-- table.remove(fruits)
-- print("移除后最后一个元素为：", fruits[5])


-- table排序
-- fruits = {"banana", "orange", "apple", "grapes"}
-- print("排序前")
-- for k, v in ipairs(fruits) do
-- 	print(k, v)
-- end

-- table.sort(fruits)
-- print("排序后")
-- for k, v in ipairs(fruits) do
-- 	print(k, v)
-- end


-- table最大值
-- tbl = {1, 2, 3}
-- print("最大值：", table.maxn(tbl)) --> maxn 5.2版本后已不存在


-- test_module.lua 文件
-- module 模块为module.lua
-- require("module")

-- print(module.constant)

-- module.func3()


-- 两表相加操作
-- function table_maxn(t)
-- 	local mn = 0
-- 	for k, v in pairs(t) do
-- 		if mn < k then
-- 			mn = k
-- 		end
-- 	end
-- 	return mn
-- end

-- mytable = setmetatable({1, 2, 3}, {
-- 	__add = function(mytable, newtable)
-- 		for i = 1, table_maxn(newtable) do
-- 			table.insert(mytable, table_maxn(mytable) + 1, newtable[i])
-- 		end
-- 		return mytable
-- 	end
-- })

-- secondtable = {4, 5, 6}

-- mytable = mytable + secondtable
-- 	for k, v in ipairs(mytable) do
-- print(k, v)
-- end


-- __call元方法
-- function table_maxn(t)
-- 	local mn = 0
-- 	for k, v in pairs(t) do
-- 		if mn < k then
-- 			mn = k
-- 		end
-- 	end
-- 	return mn
-- end

-- mytable = setmetatable({10}, {
-- 	__call = function (mytable, newtable)
-- 		sum = 0
-- 		for i = 1, table_maxn(mytable) do
-- 			sum = sum + mytable[i]
-- 		end
-- 		for i = 1, table_maxn(newtable) do
-- 			sum = sum + newtable[i]
-- 		end
-- 		return sum
-- 	end
-- })

-- newtable = {10, 20, 30}
-- print(mytable(newtable))


-- __tostring元方法
-- mytable = setmetatable({10, 20, 30}, {
-- 	__tostring = function(mytable)
-- 		sum = 0
-- 		for k, v in pairs(mytable) do
-- 			sum = sum + v
-- 		end
-- 		return "表所有元素的和为 " .. sum
-- 	end
-- })

-- print(mytable)


-- 简单模式文件读写
-- file = io.open("hello.lua", "r")  --> 已只读方式打开文件
-- io.input(file)  --> 设置默认输入文件为 hello.lua
-- print(io.read())  --> 输出文件第一行
-- io.close(file)  --> 关闭打开的文件

-- file = io.open("hello.lua", "a")  --> 已附加的方式打开只写文件
-- io.output(file)  --> 设置默认输出文件为 test.lua
-- io.write("-- hello.lua 文件末尾注释")  --> 在问价最后一行添加Lua注释
-- io.close(file)  --> 关闭打开的文件


-- 完全模式文件读写
-- file = io.open("hello.lua", "r")
-- print(file:read())
-- file:close()

-- file = io.open("hello.lua", "a")
-- file:write("-- 完全模式文件读写注释")
-- file:close()


-- seek方法
-- file = io.open("hello.lua", "r")

-- file:seek("end", -25)  --> 从文件的倒数第25个位置开始
-- print(file:read("*a"))

-- file:close()


-- 错误处理
-- local function add(a, b)
-- 	assert(type(a) == "number", "a 不是一个数字")
-- 	assert(type(b) == "number", "b 不是一个数字")
-- 	return a + b
-- end

-- add(10)


-- pcall
-- pcall(function(i) print(i) end, 33)

-- pcall(function(i) print(i) error('error..') end, 33)


-- xpcall
-- function myfunction()
-- 	n = n/nil
-- end

-- function myerrorhandler(err)
-- 	print("ERROR:", err)
-- end

-- status = xpcall(myfunction, myerrorhandler)
-- print(status)


-- 垃圾回收
-- mytable = {"apple", "orange", "banana"}
-- print(collectgarbage("count"))
-- mytable = nil
-- print(collectgarbage("count"))
-- print(collectgarbage("collect"))
-- print(collectgarbage("count"))


-- 面向对象
-- Shape = {area = 0}  --> Meta class

-- function Shape:new (o, side)  --> 基础类方法 new
-- 	o = o or {}
-- 	setmetatable(o, self)
-- 	self.__index = self
-- 	side = side or 0
-- 	self.area = side * side
-- 	return o
-- end

-- function Shape:printArea ()  --> 基础方法 printArea
-- 	print("面积为 ", self.area)
-- end

-- myshape = Shape:new(nil, 10)
-- myshape:printArea()

-- Square = Shape:new()

-- function Square:new (o, side)  --> 派生类方法
-- 	o = o or Shape:new(o, side)
-- 	setmetatable(o, self)
-- 	self.__index = self
-- 	return o
-- end

-- function Square:printArea()  --> 派生类方法
-- 	print("正方形面积为 ", self.area)
-- end

-- mysquare = Square:new(nil, 20)
-- mysquare:printArea()

-- Rectangle = Shape:new()

-- function Rectangle:new (o, length, breadth)
-- 	o = o or Shape:new(o)
-- 	setmetatable(o, self)
-- 	self.__index = self
-- 	self.area = length * breadth
-- 	return o
-- end

-- function Rectangle:printArea()
-- 	print("矩形面积为 ", self.area)
-- end

-- myrectangle = Rectangle:new(nil, 20, 30)
-- myrectangle:printArea()