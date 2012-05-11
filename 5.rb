class Integer
  def prime?
    return false if self < 2
    return true if self < 4 
    (2..Math.sqrt(self)).each { |i| return false if self%i==0 }
    return true
  end

  def num_times_into(n)
  	count = 0
  	while n%self == 0
  		count += 1 
  		n /= self  
  	end
  	return count
  end
end

def smallest_number_divisible_by_all_numbers_to(n)
	primes = (2..n).find_all(&:prime?)
 	hull = primes.map { |p| (2..n).map { |i| p.num_times_into(i) }.max }
 	return primes.zip(hull).map{ |i, j| i**j }.reduce(:*)
end


# ==============
# not needed after all

# def prime_factorization(n)
# 	primes = (2..n).find_all(&:prime?)
# 	factors = Hash.new(0)
# 	primes.each do |p|
# 		while n%p == 0 do
# 			factors[p] += 1
# 			n /= p
# 		end
# 	end
# 	return factors
# end
