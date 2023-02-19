require_relative "../../tile_bag.rb"
require 'minitest/autorun'

# unit tests for the TileBag::points_for method. 
class TileBag::TestPointsFor < MiniTest::Test
 
    # checks all 26 tile values to confirm they return the proper points
    def test_confirm_point_values
        tiles = {:A => 1, :B => 3, :C => 3, :D => 2, :E => 1, :F => 4, :G => 2, :H => 4, 
            :I => 1, :J => 8, :K => 5, :L => 1, :M => 3, :N => 1, :O => 1, :P => 3, :Q => 10, 
            :R => 1, :S => 1, :T => 1, :U => 1, :V => 4, :W => 4, :X => 8, :Y => 4, :Z => 10}
        tiles.each do |letter, points|
            assert_equal( points, TileBag.points_for(letter) )
        end
    end

end