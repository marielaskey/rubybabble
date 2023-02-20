class Word

    # the initialize method is the constructor
	def initialize
      
    end

    # returns the sum of all points for the tiles this Word contains
    def score
        sum = 0
        @points.each do |point|
            sum += point
            end
            return sum if point > 0
        end