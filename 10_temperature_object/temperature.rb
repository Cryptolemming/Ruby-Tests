class Temperature

	attr_accessor :in_fahrenheit, :in_celsius

	def initialize args
		if args[:f]
			@in_fahrenheit = args[:f]
			@in_celsius = self.class.ftoc(args[:f])
		end

		if args[:c]
			@in_celsius = args[:c]
			@in_fahrenheit = self.class.ctof(args[:c])
		end

	end

	def self.ftoc(f)
		(f - 32.0)*5.0/9.0
	end

	def self.ctof(c)
		(c*9.0/5.0) + 32.0
	end

	def self.from_celsius(c)
		new :c => c
	end

	def self.from_fahrenheit(f)
		new :f => f
	end

end

class Celsius < Temperature
	def initialize(c)
		super :c => c
	end
end

class Fahrenheit < Temperature
	def initialize(f)
		super :f => f
	end
end



