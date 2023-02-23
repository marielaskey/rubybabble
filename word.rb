class Word

    attr_accessor :word

    # the initialize method is the constructor
	def initialize
        @word = Array.def new
        end

    # returns the sum of all points for the tiles this Word contains
    def score
        sum = 0
        @points.each do |point|
            sum += point
            end
            return sum if point > 0
        end