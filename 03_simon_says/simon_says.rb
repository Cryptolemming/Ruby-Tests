def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, n=2)
	([str] * n).join(' ')
end

def start_of_word(str, i)
	str[0..i-1]
end

def first_word(str)
	str.split(' ')[0]
end

def titleize(str)
	no = ['and', 'the', 'over']
	arr = str.split(' ')

	arr.each {|x| x.capitalize! unless no.include?(x)}

	arr[0].capitalize!
	arr.join(' ')
end