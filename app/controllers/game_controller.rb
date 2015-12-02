class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    @computer_move = ["rock", "paper", "scissors"].sample

puts "Your move: rock, paper, or scissors?"

@user_move = gets.chomp.downcase
@computer_move = ["rock","paper","scissors"].sample

puts "Computer chose #{@computer_move}"
puts "You chose #{move}"


if @user_move == @computer_move
    puts "It's a tie!"
  elsif @user_move == "rock" && @computer_move == "paper"
 result=1
    elsif @user_move == "paper" && @computer_move == "scissors"
   result=2
    elsif @user_move == "scissors" && @computer_move == "rock"
    result=2
  elsif @user_move == "rock" && @computer_move == "scissors"
    result=1
  elsif @user_move == "paper" && @computer_move == "rock"
    result=1
  elsif @user_move == "scissors" && @computer_move == "paper"
    result=1
      # user rock, computer paper
end


if result =1
    x = "You won"
else x = "You lost"

    @result = "#{x}"

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
