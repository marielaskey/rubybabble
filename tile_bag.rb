class TileBag
	# (optional) generator for getters/setters for our instance vars
	attr_accessor :title, :desc, :date

	# the initialize method is the constructor
	def initialize bag, tiles
        @bag = bag
        @tiles = Array.new(:A, :A, :A, :A, :A, :A, :A, :A, :A, :B, :B, :C, :C,
            :D, :D, :D, :D, :E, :E, :E, :E, :E, :E, :E, :E, :E, :E, :E, :E, :E, 
            :F, :F, :G, :G, :G, :H, :H, :I, :I, :I, :I, :I, :I, :I, :I, :I, :J, 
            :K, :L, :L, :L, :L, :M, :M, :N, :N, :N, :N, :N, :N, :O, :O, :O, :O,
            :O, :O, :O, :O, :P, :P, :Q, :R, :R, :R, :R, :R, :R, :S, :S, :S, :S, 
            :T, :T, :T, :T, :T, :T, :U, :U, :U, :U, :V, :V, :W, :W, :X, :Y, :Y, :Z)
	
    end

    # removes one random tile from the bag and returns it
    def draw_tile
        return @tiles.delete_at(rand(0..@tiles.length-1))
    end

    #returns true if the bag is empty, false otherwise
    def empty?
        if bag == 0
            return true
            else
                return false
    end

    # this is a class method. The tile parameter is a symbol 
    # representing a letter (:A, :B, :C, etc.).  The method returns 
    # the points for the given tile letter.
    def self.points_for(tile)
        return letters[tile]
    end

    # hash map for tiles and their respective points
    letters = {:A => 1, :B => 3, :C => 3, :D => 2, :E => 1, :F => 4, :G => 2, :H => 4, 
        :I => 1, :J => 8, :K => 5, :L => 1, :M => 3, :N => 1, :O => 1, :P => 3, :Q => 10, 
        :R => 1, :S => 1, :T => 1, :U => 1, :V => 4, :W => 4, :X => 8, :Y => 4, :Z => 10}

end