require_relative "../lib/mastermind.rb"

puts "Welcome to a game of MASTERMIND"
response = false
until response == true
  puts "Would you like to be the codemaker or codebreaker?"
  game_mode = gets.chomp
  if game_mode =~ "codemaker"
    response = true
  elsif game_mode =~ "codebreaker"
    response = true
  end
end
puts ""
puts "What is your name?"
name = gets.chomp
player = Mastermind::Player.new(name)
computer = Mastermind::Computer.new
Mastermind::Game.new(player, computer).play
