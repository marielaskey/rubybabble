require_relative "../../tile_group.rb"
require 'minitest/autorun'

# unit tests for the TileGroup::initialize method. 
class TileGroup::TestInitialize < MiniTest::Test
 
    # checks all 26 tile values to confirm they return the proper points
    def test_create_empty_tile_group
        tile_group = TileGroup.new
        assert_equal(tile_group.tiles.length, 0)
        end
    end