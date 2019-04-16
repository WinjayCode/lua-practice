-- 协同演示
-- co = coroutine.create(
-- 	function(i)
-- 		print(i)
-- 	end
-- )

-- coroutine.resume(co, 1)  --> 1
-- print(coroutine.status(co))  --> dead

-- print("------")

-- co = coroutine.wrap(
-- 	function(i)
-- 		print(i)
-- 	end
-- )

-- co(1)

-- print("------")

-- co2 = coroutine.create(
-- 	function()
-- 		for i = 1, 10 do
-- 			print(i)
-- 			if i == 3 then
-- 				print(coroutine.status(co2)) --> running
-- 				print(coroutine.running()) --> thread:XXXXXX
-- 			end
-- 			coroutine.yield()
-- 		end
-- 	end
-- )

-- coroutine.resume(co2)  --> 1
-- coroutine.resume(co2)  --> 2
-- coroutine.resume(co2)  --> 3

-- print(coroutine.status(co2))  --> suspended
-- print(coroutine.running())

-- print("------")


-- function foo(a)
-- 	print("foo 函数输出", a)
-- 	return coroutine.yield(2 * a)  --> 返回 2*a的值
-- end

-- co = coroutine.create(function(a, b)
-- 	print("第一次协同程序执行输出", a, b)  --> co-body 1 10
-- 	local r = foo(a + 1)

-- 	print("第二次协同程序执行输出", r)
-- 	local r, s = coroutine.yield(a + b, a - b)

-- 	print("第三次协同程序执行输出", r, s)
-- 	return b, "结束协同程序"
-- end)

-- print("main", coroutine.resume(co, 1, 10))
-- print("----分割线----")
-- print("main", coroutine.resume(co, "r"))
-- print("----分割线----")
-- print("main", coroutine.resume(co, "x", "y"))
-- print("----分割线----")
-- print("main", coroutine.resume(co, "x", "y"))
-- print("----分割线----")


-- 生产者-消费者
-- local newProductor

-- function productor()
-- 	local i = 0
-- 	while true do
-- 		i = i + 1
-- 		send(i)  --> 将生产的物品发送给消费者
-- 	end
-- end

-- function consumer()
-- 	while true do
-- 		local i = receive()  --> 从生产者那里得到物品
-- 		print(i)
-- 	end
-- end

-- function receive()
-- 	local status, value = coroutine.resume(newProductor)
-- 	return value
-- end

-- function send(x)
-- 	coroutine.yield(x)
-- end

-- -- 启动程序
-- newProductor = coroutine.create(productor)
-- consumer()