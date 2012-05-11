class Integer
  def prime?
    return false if self < 2
    return true if self < 4 
    (2..Math.sqrt(self)).each { |i| return false if self%i==0 }
    return true
  end
end

def largest_prime_factor(n)
  return n.prime? ? n : (2..Math.sqrt(n)).reject { |i| n%i != 0 }.find_all(&:prime?).max
end

puts largest_prime_factor(600851475143)