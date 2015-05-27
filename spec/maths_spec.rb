require_relative '../maths'

RSpec.describe Maths do

	context "arithmetic" do
		it "calculates squares" do
			expect(Maths.square(5)).to eq 25
		end
		
		it "calculates nth power of m where m is the first number and n is the second number" do
			expect(Maths.pow(2, 5)).to eq 32
		end
	end

	context "factorial" do
		it "calculates fsctorials" do
			expect(Maths.fact(5, 1)).to eq 120
		end
	end

	context "Fibonacci" do
		it "calculates the first Fibonacci number" do
			expect(Maths.fib(1)).to eq 1
		end

		it "calculates the second Fibonacci number" do
			expect(Maths.fib(2)).to eq 1
		end

		it "calculates the third Fibonacci number" do
			expect(Maths.fib(3)).to eq 2
		end

		it "calculates the tenth Fibonacci number" do
			expect(Maths.fib(10)).to eq 55
		end

		# This one takes a few seconds due to the inefficiency of the algorithm used
		# it "calculates the 38th Fibonacci number" do
		# 	expect(Maths.fib(38)).to eq 39088169
		# end

		# This one is much faster, note the placeholder values for the accumulator variables
		it "calculates the 38th Fibonacci number" do
			expect(Maths.fibfast(38, 1, 1)).to eq 39088169
		end
	end

	context "progressions" do
		it "generates an arithmetic series of numbers from x with addition y and number of iterations n" do
			expect(Maths.arithmetic(10, 2, 6)).to eq [10, 12, 14, 16, 18, 20]
		end

		it "generates an geometric series of numbers from x with product y and number of iterations n" do
			expect(Maths.geometric(1, 2, 6)).to eq [1, 2, 4, 8, 16, 32]
		end
	end

end
