def fib(max)
	i, j, k, seq = 1, 2, 2, [1]
	while k < max 
		seq << k
		k = i + j
		i, j = j, k
	end
	seq
end

# then call:
# fib(4e6).find_all(&:even?).reduce(:+)

# ==========================

def sum_of_even_fibs_less_than(n)
		
	# WITHOUT AN ARRAY
	i, j, sum = 1, 2, 2
	loop do
		k = i + j
		break if k > n
		sum += k if k.even?
		i, j = j, k
	end
	return sum

	# ===========================
	
	# WITH AN ARRAY
	# fib = Array.new
	# sum1, sum2 = 0, 0

	# fib[1], fib[2], i = 1, 2, 3

	# loop do
	# 	fib[i] = fib[i-2] + fib[i-1]

	# 	break if fib[i] > n 
	# 	sum += fib[i] if (fib[i]%2 == 0) 

	# 	# or, since the sequence will be OEOOEOOE, etc
	# 	#	sum += fib[i] if (i%3 == 2) 

	# 	i += 1

	# end

	# return sum1

end