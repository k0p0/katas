sequence = [4, 3, 5, 0, 1]
swaps = 0

sorted = true
while sorted do
  sorted = false
  0.upto(sequence.length-2) do |i|
    if sequence[i] > sequence[i+1]
      sequence[i], sequence[i+1] = sequence[i+1] , sequence[i]
      sorted = true
      swaps += 1
    end
    # puts sequence.inspect
  end
end
puts "Final result: #{sequence}"
puts "Swaps: #{swaps}"
