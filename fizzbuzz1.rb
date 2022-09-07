require_relative 'TypeHandles'
require_relative 'FizzBuzzLoops'

puts "Rule selection, as per softwire docs. Type numbers (out of 3, 5, 7, 11, 13, and 17) for which you want the standard
rules to apply, separated by a space"
default_rules = gets.chomp
default_rules.split(/ /)

n_new_rules = parseint("Designing new rules. First, enter number of new rules to generate: ")

unless n_new_rules.zero?
  new_rules = {}
  for n in 1..n_new_rules do
    target_mult = parseint("Enter multiple which you want a new output for: ")

    puts "Enter string to replace number with: "
    ret_string = gets.chomp.to_s

    string_loc = parsestring("String appears at start (s) or end (e) of final result? Note that new rules override softwire ones,
    and later rules take priority", ["e", "s"])

    new_rules[target_mult] = [ret_string, string_loc]
  end
end

first_n = parseint("Enter range: from")
last_n = parseint("To")
puts "\n Result: \n"

fizz_buzz_loop(first_n, last_n, default_rules, new_rules, n_new_rules)
