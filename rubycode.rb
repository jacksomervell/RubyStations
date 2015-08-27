MTA = {:n_line => ["TS", "34th", "28th", "N23rd", "US", "N8th"],
  :l_line => ["L8th", "6th", "US", "3rd", "1st"],
  :six_line => ["GC", "33rd", "28th", "Six23rd", "US", "AP"]}

puts "Which line do you want to start with?"
start_line = gets.chomp
puts "You have selected " + start_line

puts "Which station are you starting at?"
start_station = gets.chomp
puts "You are starting at " + start_station + " on the " + start_line 

puts "Which line do you want to get to?"
end_line = gets.chomp
puts "You have selected " + end_line

puts "Which station do you want to get to?"
end_station = gets.chomp
puts "You are going to " + end_station



  if start_line == "n_line" && MTA[:n_line].index(end_station)
     stop_amount = MTA[:n_line].index(end_station) - MTA[:n_line].index(start_station)
    stop_amount = stop_amount.abs
    puts "Your journey will take " + stop_amount.to_s + " stops"
  end

  if start_line == "l_line" && MTA[:l_line].index(end_station)
    stop_amount = MTA[:l_line].index(end_station) - MTA[:l_line].index(start_station)
    stop_amount = stop_amount.abs
    puts "Your journey will take " + stop_amount.to_s + " stops"
  end

  if start_line == "six_line" && MTA[:six_line].index(end_station)
   stop_amount = MTA[:six_line].index(end_station) - MTA[:six_line].index(start_station)
   stop_amount = stop_amount.abs
   puts "Your journey will take " + stop_amount.to_s + " stops"
  end


startline_symbol = start_line.to_sym
endline_symbol = end_line.to_sym

if MTA[startline_symbol].count(end_station) == 0
  leg_one = MTA[startline_symbol].index("US")  - MTA[startline_symbol].index(start_station)
  leg_one = leg_one.abs
  leg_two = MTA[endline_symbol].index(end_station) - MTA[endline_symbol].index("US")
  leg_two = leg_two.abs
  stop_amount = leg_one + leg_two
  puts "Your journey will take " + stop_amount.to_s + " stops"
end







# if start_line != 'N' || 'L' || '6'
#   puts "that line doesn't exist!"




