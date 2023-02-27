class TileRack < TileGroup

    require 'spellchecker'
    require 'tempfile'

	# the initialize method is the constructor
	def initialize
        super
    end

    # return the number of tiles needed to bring the rack back up to 7.  It is used 
    # to know how many tiles are required to replenish the rack.
    def number_of_tiles_needed
        if @tiles.size < 7
            return 7 - @tiles.size
            else
                return 0
            end
    end

     # returns true if the rack has enough tiles to make the word represented
     # by the text parameter (which is a string)
    def has_tiles_for?(text)
        if text.length <= @tiles.size
            characters = text.chars()
            characters.each do |char|
                symbol = char.upcase.to_sym
                if not @tiles.include?(symbol)
                    return false
                end
            end
            return true
            else
                return false
            end    
    end

    # returns a Word object made by removing all tiles given by text(string)
    def remove_word(text)
        word = Word.new()
        characters = text.chars()
        characters.each do |char|
            symbol = char.upcase.to_sym     
            remove(symbol)
            word.append(symbol)
            end
        return word
    end

end