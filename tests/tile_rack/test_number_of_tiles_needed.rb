require_relative "../../tile_rack.rb"
require 'minitest/autorun'

#unit tests for the TileRack::number_of_tiles_needed method. 
class TileRack::TestNumberOfTilesNeeded < MiniTest::Test
 
    def test_empty_tile_rack_should_need_max_tiles
        tile_rack = TileRack.new
        assert_equal(tile_rack.number_of_tiles_needed, 7)
        end

    def test_tile_rack_with_one_tile_should_need_max_minus_one_tiles
        tile_rack = TileRack.new()
        tile_rack.append(:A)
        assert_equal(tile_rack.number_of_tiles_needed, 6)
        end

    def test_tile_rack_with_several_tiles_should_need_some_tiles
        tile_rack = TileRack.new()
        tile_rack.append(:A).append(:B).append(:C).append(:D)
        assert_equal(tile_rack.number_of_tiles_needed, 3)
        end

    def test_that_full_tile_rack_doesnt_need_any_tiles
        tile_rack = TileRack.new()
        tile_rack.append(:A).append(:B).append(:C).append(:D).append(:J).append(:K).append(:L)
        assert_equal(tile_rack.number_of_tiles_needed, 0)
        end

end