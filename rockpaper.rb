require './pythonicinput'

class RockPaperScissors
    def initialize(your_wins, computer_wins)
        @your_wins = your_wins
        @computer_wins = computer_wins
    end

    
    
    
    def game
    	sps_options = ["rock", "paper", "scissors"]
    	computer_generated_choice = sps_options.shuffle.sample
    	user_input = pythonic_input("Choose: rock, paper, scissors or exit").strip.downcase
    	
    	if user_input == computer_generated_choice
    		puts "Computer: #{computer_generated_choice}"
    		puts "Tie"
    		keep_score()
    		play_again()
    	elsif user_input == "exit"
    	    exiting_game()
    	    
    	elsif user_input == "rock" && computer_generated_choice ==  "paper"
    		puts "Computer: #{computer_generated_choice}"
    		puts "Computer wins"
    		@computer_wins = @computer_wins + 1
    		keep_score()
    		play_again()
    	elsif user_input == "rock" && computer_generated_choice == "scissors"
    		puts "Computer: #{computer_generated_choice}"
    		puts "You win"
    		@your_wins = @your_wins + 1
    		keep_score()
    		play_again()
    	elsif user_input == "paper" && computer_generated_choice == "rock"
    		puts "Computer: #{computer_generated_choice}"
    		puts "You win"
    		@your_wins = @your_wins + 1
    		keep_score()
    		play_again()
    	elsif user_input == "paper" && computer_generated_choice == "scissors"
    		puts "Computer: #{computer_generated_choice}"
    		puts "Computer wins"
    		@computer_wins = @computer_wins + 1
    		keep_score()
    		play_again()
    	elsif user_input == "scissors" && computer_generated_choice == "rock"
    		puts "Computer: #{computer_generated_choice}"
    		puts "Computer wins"
    		@computer_wins = @computer_wins + 1
    		keep_score()
    		play_again()
    	elsif user_input == "scissors" && computer_generated_choice == "paper"
    		puts "Computer: #{computer_generated_choice}"
    		puts "You win"
    		@your_wins = @your_wins + 1
    		keep_score()
    		play_again()
    	end
    
    end
    
    
    def play_again
		rps = game()
    	
    end
    
    def exiting_game()
        puts "You: #{@your_wins} Computer: #{@computer_wins}"
        if @your_wins > @computer_wins
            puts "You have won more games than the computer!"
        elsif @your_wins == @computer_wins
        	puts "You and the computer have tied"
        else
            puts "The computer has won more games than you!"
        end
    end
    
    def keep_score
    	puts "You: #{@your_wins} Computer: #{@computer_wins}"
    end

end 
    
rps = RockPaperScissors.new(0,0).game