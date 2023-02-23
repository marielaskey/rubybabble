class TileGroup
	# creates an accessor method name tiles that returns all tiles in the group.
	attr_accessor :tiles

	# the initialize method is the constructor
	def initialize
        @tiles = Array.new
        end

    # appends a tile (as a symbol, e.g., :A, :B, :C, etc.) to the group.
    def append(tile)
        @tiles.append(tile)
    end

     # removes a tile from the group.
    def remove(tile)
        @tiles.delete_at(@tiles.index(tile))     
    end

    # returns a string that is the concatenation of all tiles' string values
    def hand
       return @tiles.to_s
    end

end