require_relative "../../tile_group.rb"
require 'minitest/autorun'

# unit tests for the TileGroup::append method. 
class TileGroup::TestAppend < MiniTest::Test
 
    # test for appening one tile to the group
    def test_append_one_tile
        tile_group = TileGroup.new
        assert_equal(tile_group.append(:A), [:A])
        end

    # test for appending many tiles to the group
    def test_append_many_tiles
        tile_group = TileGroup.new
        assert_equal(tile_group.append(:A).append(:B).append(:C), [:A, :B, :C])
        end

    # test for appending duplicate tiles to the group
    def test_append_duplicate_tiles
        tile_group = TileGroup.new
        assert_equal(tile_group.append(:A).append(:A).append(:A).append(:A), [:A, :A, :A, :A])
        end

    end
