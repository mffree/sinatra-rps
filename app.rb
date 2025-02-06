require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  @my_move = "rock"
  @comp_move = moves.sample
  
  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:results)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]
  @my_move = "paper"
  @comp_move = moves.sample
  
  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"
  end

  erb(:results)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  @my_move = "scissors"
  @comp_move = moves.sample
  
  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end

  erb(:results)
end
