# 题目: 输入有多少片比萨饼和多少人，输出每人可以分到几片，以及剩下几片

print "请输入有多少片比萨饼，然后按 Enter: "
pizzas = gets

print "请输入有多少人要吃，然后按 Enter: "
people = gets

piz1 = pizzas.to_i # to_i 转成整数
peo1 = people.to_i
piz2 = pizzas.to_f # to_f 转成浮点数
peo2 = people.to_f

gets1 = piz1 / peo1
gets2 = piz2 / peo2
# 整数除以整数还是整数，不加 .round 仍然可以得到商（整数）
# （.round 四舍五入，.ceil 无条件进制，.floor 无条件舍去）
left1 = piz1 % peo1
# 整数初一整数，求余数（例：20/3，结果为2）
left2 = piz2 % peo2
# 浮点数除以浮点数，求余数（例：20.0/3.0，结果为2.0）

puts "每人可分得几片: #{gets1} 片（1整数），#{gets2}片（2浮点数）"
puts "还剩下几片: #{left1} 片（对应1整数）, #{left2}片（2浮点数）"
