def collatz(num)
  sequence = []

  while num > 1
    if sequence.length == 0
      sequence << num
    elsif num % 2 == 0
      num = num / 2
      sequence << num
    else
      num % 2 == 1
      num = 3 * num + 1
      sequence << num
    end
  end
  sequence
end

def compare_collatz(num)
  longest = 0
  (1..num).each do |n|
    if collatz(n).length > collatz(longest).length
      longest = n
    end
  end
  puts "The number with the longest Collatz sequence from 1 to #{num} is #{longest}"
end

p collatz(7)
compare_collatz(1000000)
        