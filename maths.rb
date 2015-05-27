# Class of common mathematical functions

class Maths

	def self.square(n)
		return n * n
	end

	def self.pow(m, n)
		acc = 1
		n.times { acc *= m }
		return acc
	end

	def self.fact(n, acc)
		if n == 1
			return acc
		else
			fact(n - 1, acc * n)
		end
	end

	def self.fib(n)
		if n == 1 || n == 2
			return 1
		else
			return fib(n - 1) + fib(n - 2)
		end
	end

	def self.fibfast(n, acc1, acc2)
		if n == 1 || n == 2
			return acc1
		else
			return fibfast(n - 1, acc1 + acc2, acc1)
		end
	end

	def self.arithmetic(x, y, n)
		result = []
		counter = 0
		while counter < n
			result << x
			x = x + y
			counter += 1
		end
		return result
	end

	def self.geometric(x ,y, n)
		result = []
		counter = 0
		while counter < n
			result << x
			x = x * y
			counter += 1
		end
		return result
	end

end
