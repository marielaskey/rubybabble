require_relative 'tile_bag.rb'
require_relative 'tile_group.rb'
require_relative 'tile_rack.rb'
require_relative 'word.rb'

require 'spellchecker'
require 'tempfile'

class Babble

def
    initialize
    @letters = TileBag.new
end

def refresh_rack(rack)
    tiles_needed = rack.number_of_tiles_needed
    for i in 1..tiles_needed do
        rack.append(@letters.draw_tile)
    end
end

def run()
    rack = TileRack.new
    total_score = 0
    for i in 1..7 do
        rack.append(@letters.draw_tile)
    end
    puts "Welcome to the Babble application. Your
    tile rack contains " + rack.hand + "."
    puts "Hello user, guess a word!"  
    input = gets.chomp 
    puts = input
    until input == ":quit" do 
        if (rack.has_tiles_for?(input) == false) then
            puts "Not enough tiles"
        else 
            if (Spellchecker::check(input)[0][:correct] == false) then
               puts "Not a valid word."
            else 
                word = rack.remove_word(input)
                puts "You made " + input + " for " + word.score.to_s + " points!" 
                refresh_rack(rack)
                total_score += word.score
                puts "Your tile rack now containts " + rack.hand
            end
            
        end
        puts "Hello user, guess a word!"
        input = gets.chomp 
    end 

    puts "Thanks for playing, total score: " + total_score.to_s

end

Babble.new.run

end

Babble.new.run
