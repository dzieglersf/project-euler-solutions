def time
	start = Time.now
	yield
	puts Time.now - start
end


puts "what is the top number?"
top = gets
sum = 0

begin 

	time do 

		top = Integer(top)
		num3 = top/3
		num5 = top/5
		num15 = top/15
		sum1 = 3*num3*(num3 + 1)/2 
		sum2 = 5*num5*(num5 + 1)/2
		sum15 = 15*num15*(num15 + 1)/2
		puts sum1 + sum2 - sum15

	end


rescue ArgumentError

	puts "you were supposed to enter an integer"

end
