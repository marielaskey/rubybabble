require_relative "../../tile_group.rb"
require 'minitest/autorun'

# unit tests for the TileGroup::hand method. 
class TileGroup::TestHand < MiniTest::Test

def test_convert_empty_group_to_string
    tile_group = TileGroup.new
    assert_equal(tile_group.hand, "[]")
    end

def test_convert_single_tile_group_to_string
    tile_group = TileGroup.new
    tile_group.append(:B)
    assert_equal(tile_group.hand, "[:B]")
    end

def test_convert_multi_tile_group_to_string
    tile_group = TileGroup.new
    tile_group.append(:A).append(:B).append(:C)
    assert_equal(tile_group.hand, "[:A, :B, :C]")
    end

def test_convert_multi_tile_group_with_duplicates_to_string
    tile_group = TileGroup.new
    tile_group.append(:A).append(:B).append(:C).append(:C).append(:C)
    assert_equal(tile_group.hand, "[:A, :B, :C, :C, :C]")
    end

end