require_relative "../../tile_group.rb"
require 'minitest/autorun'

# unit tests for the TileGroup::remove method. 
class TileGroup::TestRemove < MiniTest::Test
 
    # test for removing one tile from the group
    def test_remove_only_tile
        tile_group = TileGroup.new
        tile_group.append(:A)
        tile_group.remove(:A)
        assert_equal(tile_group.tiles, [])
        end

    # test for removing first tile from many tiles from the group
    def test_remove_first_tile_from_many
        tile_group = TileGroup.new
        tile_group.append(:A).append(:B).append(:C).append(:D).append(:E)
        tile_group.remove(:A)
        assert_equal(tile_group.tiles, [:B, :C, :D, :E])
        end

    # test for removing last tile from many tiles from the group
    def test_remove_last_tile_from_many
        tile_group = TileGroup.new
        tile_group.append(:A).append(:B).append(:C).append(:D).append(:E)
        tile_group.remove(:E)
        assert_equal(tile_group.tiles, [:A, :B, :C, :D])
        end

    # test for removing middle tile from many tiles from the group
    def test_remove_middle_tile_from_many
        tile_group = TileGroup.new
        tile_group.append(:A).append(:B).append(:C).append(:D).append(:E)
        tile_group.remove(:C)
        assert_equal(tile_group.tiles, [:A, :B, :D, :E])
        end

    # test for removing multiple tiles from the group
    def test_remove_multiple_tiles
        tile_group = TileGroup.new
        tile_group.append(:A).append(:B).append(:C).append(:D).append(:E)
        tile_group.remove(:B)
        tile_group.remove(:C)
        tile_group.remove(:D)
        assert_equal(tile_group.tiles, [:A, :E])
        end
    
    # test to make sure duplicates are not removed
    def test_make_sure_duplicates_are_not_removed
        tile_group = TileGroup.new
        tile_group.append(:A).append(:A).append(:A).append(:A).append(:A)
        tile_group.remove(:A)
        assert_equal(tile_group.tiles, [:A, :A, :A, :A])
        end

    end
