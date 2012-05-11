def time
	start = Time.now
	yield
	puts Time.now - start
end


puts "what is the top number?"
top = gets
sum = 0

startTime = Time.now
begin 

	top = Integer(top)
	
	time do 	
	
		(1..top.to_i).each do |n|
			if (n%3==0 or n%5==0) then 
				sum += n 
			end # if

		end # iterator
  	puts sum
  	
	end # timer


rescue ArgumentError

	puts "you were supposed to enter an integer" 

end
