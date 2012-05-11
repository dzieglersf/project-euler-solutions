pal = Array.new(3, 0)
(100..999).each do |i|
	(100..999).each do |j|
		k = i*j
		pal = [k, i, j] if k.to_s.reverse == k.to_s && k > pal[0]
	end
end
puts "palindrome is #{pal[0]}; and its factors are #{pal[1]} and #{pal[2]}"