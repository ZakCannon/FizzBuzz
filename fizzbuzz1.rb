for n in 0..100 do

  if n % 3 == 0
    if n % 5 == 0
      puts "FizzBuzz"
      next
    end
    puts "Fizz"
    next
  end

  if n % 5 == 0
    puts "Buzz"
    next
  end
  puts n
end