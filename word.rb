class Word < TileGroup

    attr_accessor :word

    # the initialize method is the constructor
	def initialize
        super
        end

    # returns the sum of all points for the tiles this Word contains
    def score
        sum = 0
        @tiles.each do |tile|
            sum += Tile.points_for(tile)
            end
            return sum
        end

    end