def diff_between_sum_of_squares_squares_of_sums_to(n)
	return {:bruteforce => (1..n).reduce(:+)**2 - (1..n).map{ |i| i**2 }.reduce(:+),
					:mathy => (n*(n+1)/2)**2 - (n*(2*n+1)*(n+1)/6) }
end

