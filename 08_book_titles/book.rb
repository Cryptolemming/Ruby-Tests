class Book

	def title
	  @name
	end

	def title=(b)
	  @name = (b.split(' ').each { |x| x.capitalize! if x.length > 3 || ( x == "man" || x == "eat" || x == "day" || x == "was" || x == "i")})
	  @name[0].capitalize!
	  @name = @name.join(' ')
	end

end