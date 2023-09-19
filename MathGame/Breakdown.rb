#Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

#Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

#The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

class Question 
#Will create the logic around questions and subtract lives from each playerse lives
#State --> 
#Methods --> ask_question, check_answer, random_number_gen

#Data -->
end

class Player
#Will keep all information regarding player includeing lives, and user input
#State --> Lives
#Methods --> subtract-lives

#Data --> Needs name, lives to initialize
end

class Game
#Will keep track of lives of the users and the output the changing of turns
#Will output the final score and Game Over messages
#State --> current_player
#Methods --> change_player, check_lives

#Data --> Needs an initial player to initialize

end