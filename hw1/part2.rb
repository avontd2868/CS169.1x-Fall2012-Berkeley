class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end


def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  p1_strategy = game[0][1]
  p2_strategy = game[1][1]
  player1 = game[0][0]
player2 = game[1][0]
winning_results = ["rs", "sp", "pr"]
tie_results = ["rr", "ss","pp"]

raise NoSuchStrategyError unless p1_strategy.downcase.match(/[rps]/) && p2_strategy.downcase.match(/[rps]/)

if winning_results.index(p1_strategy.downcase+p2_strategy.downcase) 
return ["#{player1}","#{p1_strategy}"]
elsif tie_results.index(p1_strategy.downcase+p2_strategy.downcase)
return ["#{player1}", "#{p1_strategy}"]
else
return ["#{player2}", "#{p2_strategy}"]
end

end
=begin
tournament = 
[
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]
=end

def rps_tournament_winner(tournament)
  tournament.flatten!
  game = Array.new;
game << [tournament[0],tournament[1]]
game << [tournament[2],tournament[3]]

while tournament.length > 2 
 tournament.slice!(0..3) 
if tournament.length == 2 
  #puts "Winner"
end

tournament << rps_game_winner(game)
rps_tournament_winner(tournament) 
end 
return tournament
end


