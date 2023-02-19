class TileBag
	# (optional) generator for getters/setters for our instance vars
	attr_accessor :tiles

	# the initialize method is the constructor
	def initialize
        @tiles = Array.new()

            12.times {|n| @tiles.push(:E)}
            9.times {|n| @tiles.push(:A)}
            9.times {|n| @tiles.push(:I)}
            8.times {|n| @tiles.push(:O)}
            6.times {|n| @tiles.push(:N)}
            6.times {|n| @tiles.push(:R)}
            6.times {|n| @tiles.push(:T)}
            4.times {|n| @tiles.push(:L)}
            4.times {|n| @tiles.push(:S)}
            4.times {|n| @tiles.push(:U)}
            4.times {|n| @tiles.push(:D)}
            3.times {|n| @tiles.push(:G)}
            2.times {|n| @tiles.push(:B)}
            2.times {|n| @tiles.push(:C)}
            2.times {|n| @tiles.push(:M)}
            2.times {|n| @tiles.push(:P)}
            2.times {|n| @tiles.push(:F)}
            2.times {|n| @tiles.push(:H)}
            2.times {|n| @tiles.push(:V)}
            2.times {|n| @tiles.push(:W)}
            2.times {|n| @tiles.push(:Y)}
            1.times {|n| @tiles.push(:K)}
            1.times {|n| @tiles.push(:J)}
            1.times {|n| @tiles.push(:X)}           
            1.times {|n| @tiles.push(:Q)}           
            1.times {|n| @tiles.push(:Z)}           
        
        end

    # removes one random tile from the bag and returns it
    def draw_tile
        remaining = @tiles.length
        idx = rand(0..(remaining - 1))
        tile = @tiles.delete_at(idx)
#puts "Drawing from #{remaining} tiles at: #{idx}, value: #{tile}"
        return tile
        #return @tiles.delete_at(rand(0..(@tiles.length - 1)))
    end

    #returns true if the bag is empty, false otherwise
    def empty?
        if @tiles.length == 0
            return true
            else
                return false
        end
    end

    # this is a class method. The tile parameter is a symbol 
    # representing a letter (:A, :B, :C, etc.).  The method returns 
    # the points for the given tile letter.
    def self.points_for(tile)
        tilePoints = {:A => 1, :B => 3, :C => 3, :D => 2, :E => 1, :F => 4, :G => 2, :H => 4, 
            :I => 1, :J => 8, :K => 5, :L => 1, :M => 3, :N => 1, :O => 1, :P => 3, :Q => 10, 
            :R => 1, :S => 1, :T => 1, :U => 1, :V => 4, :W => 4, :X => 8, :Y => 4, :Z => 10}
        return tilePoints[tile]
    end

end