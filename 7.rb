def Eratosthenes_to(n)

	# init:  putting 1 in the 0 index, helps the index at the end line up
  sieved_nums = Hash.new
  (1..n).each { |i| sieved_nums[i] = true }
  
  # start sieving
  (2..Math.sqrt(n)).each do |i| 
  	if sieved_nums[i] == true then 
	  	(i ** 2 .. n).each do |j|
	  		if sieved_nums[j] == true then 
	  			sieved_nums[j] = false if j%i == 0
	  		end
	  	end
	  end
  end

  # return just the sieved numbers as an array
  return sieved_nums.reject { |k,v| v == false }.keys.to_a

end

puts Eratosthenes_to(130000)[10001]

# or, using new libraries! ...
require 'prime'
puts Prime.first(10_001).max










