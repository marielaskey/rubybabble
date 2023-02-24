require_relative "../../tile_rack.rb"
require 'minitest/autorun'

#unit tests for the TileRack::has_tiles_for? method. 
class TileRack::TestHasTilesFor < MiniTest::Test
 
    def test_rack_has_needed_letters_when_letters_are_in_order_no_duplicates
        tile_rack = TileRack.new
        text = "bad"
        tile_rack.append(:B).append(:A).append(:D)
        assert_equal(tile_rack.has_tiles_for?("bad"), true)
    end

    def test_rack_has_needed_letters_when_letters_are_not_in_order_no_duplicates
        tile_rack = TileRack.new
        text = "bad"
        tile_rack.append(:B).append(:D).append(:A)
        assert_equal(tile_rack.has_tiles_for?("bad"), true)
    end

    def test_rack_contains_some_but_not_all_needed_letters
        tile_rack = TileRack.new
        text = "bad"
        tile_rack.append(:X).append(:B).append(:Z).append(:D)
        assert_equal(tile_rack.has_tiles_for?("bad"), false)
    end

    def test_rack_contains_a_word_with_duplicate_letters
        tile_rack = TileRack.new
        text = "kitten"
        tile_rack.append(:K).append(:I).append(:T).append(:T).append(:E).append(:N)
        assert_equal(tile_rack.has_tiles_for?("kitten"), true)
    end

    def test_rack_doesnt_contain_enough_duplicate_letters
    tile_rack = TileRack.new
        text = "kitten"
        tile_rack.append(:K).append(:I).append(:T).append(:E).append(:N)
        assert_equal(tile_rack.has_tiles_for?("kitten"), false)
    end

end