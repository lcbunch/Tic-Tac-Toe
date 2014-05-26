puts "Tic Tac Toe"

row1 = ["1","2","3"]
row2 = ["4","5","6"]
row3 = ["7","8","9"]

odd = "x"
even = "o"

puts "Who is playing?"
player1 = gets.chomp.capitalize
puts "Who is else is playing?"
player2 = gets.chomp.capitalize

if rand >= 0.5
  puts "#{player1} is x and goes first."
else
  puts "#{player2} is x and goes first."
end

puts "This is the board."

puts " #{row1}\n #{row2}\n #{row3}\n"

turn = 0
while turn <= 8
  turn += 1

if turn.odd?
  puts "X's turn."
else
  puts "O's turn."
end

  puts "Choose a free spot 1 - 9."
  number = gets.chomp.to_s

  if turn.odd?
    if row1[0] == number
    row1[0] = odd
  elsif row1[1] == number
    row1[1] = odd
  elsif row1[2] == number
    row1[2] = odd
  elsif row2[0] == number
    row2[0] = odd
  elsif row2[1] == number
    row2[1] = odd
  elsif row2[2] == number
    row2[2] = odd
  elsif row3[0] == number
    row3[0] = odd
  elsif row3[1] == number
    row3[1] = odd
  elsif row3[2] == number
    row3[2] = odd
  else turn += 0
    puts "That space is not available."
  end
end

  if turn.even?
    if row1[0] == number
    row1[0] = even
  elsif row1[1] == number
    row1[1] = even
  elsif row1[2] == number
    row1[2] = even
  elsif row2[0] == number
    row2[0] = even
  elsif row2[1] == number
    row2[1] = even
  elsif row2[2] == number
    row2[2] = even
  elsif row3[0] == number
    row3[0] = even
  elsif row3[1] == number
    row3[1] = even
  elsif row3[2] == number
    row3[2] = even
  else turn += 0
    puts "That space is not available."
  end
end

puts " #{row1}\n #{row2}\n #{row3}\n"

if row1.all? { |item| item == "x"} || row2.all? { |item| item == "x"} || row3.all? { |item| item == "x"} ||
   row1[0].eql?("x") && row2[0].eql?("x") && row3[0].eql?("x") || row1[1].eql?("x") && row2[1].eql?("x") && row3[1].eql?("x") ||
   row1[2].eql?("x") && row2[2].eql?("x") && row3[2].eql?("x") || row1[0].eql?("x") && row2[1].eql?("x") && row3[2].eql?("x") ||
   row1[2].eql?("x") && row2[1].eql?("x") && row3[0].eql?("x")
  puts "X wins!"
  exit
elsif
  row1.all? { |item| item == "o"} || row2.all? { |item| item == "o"} || row3.all? { |item| item == "o"} ||
     row1[0].eql?("o") && row2[0].eql?("o") && row3[0].eql?("o") || row1[1].eql?("o") && row2[1].eql?("o") && row3[1].eql?("o") ||
     row1[2].eql?("o") && row2[2].eql?("o") && row3[2].eql?("o") || row1[0].eql?("o") && row2[1].eql?("o") && row3[2].eql?("o") ||
     row1[2].eql?("o") && row2[1].eql?("o") && row3[0].eql?("o")
  puts "O wins!"
  exit
end
end
puts "It's a tie."
