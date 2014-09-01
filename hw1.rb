# Return a reversed copy of the array
def reverse(an_array)
   an_array.reverse
end
 puts reverse([3,6,"dog"]).inspect


# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram("Hello") returns {"h"=>1,"e"=>1,"l"=>2,"o"=>1}
def histogram(a_string)
  # write your code here
letters = a_string.split("")
frequencies = Hash.new(0)
letters.each { |letter| frequencies[letter] += 1 }
frequencies.each { |letter, frequency| puts letter.downcase + " " + frequency.to_s }
end
puts histogram("The Quick brown fox").inspect

# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
def sum_only_numbers(an_array)
  # write your code here\
counter = 0
for arr2 in an_array
if arr2.is_a? Fixnum
counter += arr2
end
if arr2.is_a? Float
counter += arr2
end
end
an_array
counter
end
puts sum_only_numbers [4, "foo", [ ], 27, :rain, 3.14]

# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is "Fizz"
# If i is a multiple of 5, the element is "Buzz"
# If i is a multiple of 3 and 5, the element is "FizzBuzz"
# Otherwise, the element is simply the value of i
# For example [1, 2, "Fizz", 4, "Buzz", "Fizz", ..., 14, "FizzBuzz", ...]
def fizzbuzz
  # write your code here
for counter in 1..100
if (counter%3 == 0 and counter%5==0)
puts "FizzBuzz"
elsif counter%5 == 0
puts "Buzz"
elsif counter%3 == 0
puts "Fizz"
else
puts counter
end
end
end

puts fizzbuzz
