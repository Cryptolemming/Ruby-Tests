def translate(str)

	vowel = ["a", "e", "i", "o", "u"]
	arr = str.split('')
	new_arr = []

	while vowel.include?(arr[0]) == false
		cut = arr.shift
		new_arr.push(cut)
		if cut == 'q' && arr[0] == 'u'
			arr.shift
			new_arr.push('u')
		end
	end

	new_word = arr.join + new_arr.join + "ay"

end

def translate_multiple(sentence)
	product = []
	sentence.split(' ').each {|x| product << translate(x)}
	product.join(" ")
end


