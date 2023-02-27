require_relative 'tile_bag.rb'
require_relative 'tile_group.rb'
require_relative 'tile_rack.rb'
require_relative 'word.rb'

class Babble

def
    initialize
end

def run()
    rack = TileRack.new
    letters = TileBag.new
    word = Word.new
    for i in 1..7 do
        rack.append(letters.draw_tile)
    end
    puts "Welcome to the Babble application. Your
    tile rack contains " + rack.hand + "."
    puts "Hello user, guess a word!"  
    word = gets 
    puts = word
    until word == ":quit" do 
            puts "Thanks for playing, total score: " + rack.score
            puts "Not a valid word."
            puts "Not enough tiles"
            puts "You made " + word " for " + word.score + " points!" 
            puts word.score
            puts "Hello user, guess a word!"
            word = gets
            
        end
        
    end 

end

Babble.new.run
