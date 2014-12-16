def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(arr)
	sum = 0
	arr.each {|x| sum += x}
	sum
end

def multiply(*numbers)
	total = 1
	numbers.each {|x| total = total * x}
	total
end

def power(x,y)
	x**y
end

def factorial(n)
	total = 1
	(2..n).each {|n| total = total*n}
	total
end
