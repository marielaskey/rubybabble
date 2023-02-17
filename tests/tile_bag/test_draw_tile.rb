require 'tile_bag'

#unit tests for the TileBag::draw_tile method. 
class TileBag::TestDrawTile
 
    # tests that exactly 98 tiles can be drawn (after which the bag is empty)
    def test_has_proper_number_of_tiles
        for i in 1..98 do
            TileBag.draw_tile()
        end
        assert_true(TileBag.empty?)
    end

    # tests that the tiles in the bag are distributed exactly as specified 
    # in the Scrabble rules.
    def test_has_proper_tile_distribution
        draws = {:A => 0, :B => 0, :C => 0, :D => 0, :E => 0, :F => 0, :G => 0, :H => 0, 
            :I => 0, :J => 0, :K => 0, :L => 0, :M => 0, :N => 0, :O => 0, :P => 0, :Q => 0, 
            :R => 0, :S => 0, :T => 0, :U => 0, :V => 0, :W => 0, :X => 0, :Y => 0, :Z => 0}
        for i in 1..98 do
           tile = TileBag.draw_tile()
           draws[tile] += 1
        end
        letters = {:A => 9, :B => 2, :C => 2, :D => 4, :E => 12, :F => 2, :G => 3, :H => 2, 
        :I => 9, :J => 1, :K => 1, :L => 4, :M => 2, :N => 6, :O => 8, :P => 2, :Q => 1, 
        :R => 6, :S => 4, :T => 6, :U => 4, :V => 2, :W => 2, :X => 1, :Y => 2, :Z => 1}
        assert_equal(letters, draws)
    end

end