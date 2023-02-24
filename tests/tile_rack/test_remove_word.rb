require_relative "../../tile_rack.rb"
require 'minitest/autorun'

#unit tests for the TileRack::remove_word method. 
class TileRack::TestRemoveWord < MiniTest::Test
 
    def test_can_remove_a_word_whose_letters_are_in_order_on_the_rack
        tile_rack = TileRack.new
        tile_rack.append(:B).append(:A).append(:D)
        text = "bad"
        word = Word.new
        word.append(:B).append(:A).append(:D)
        assert_equal(tile_rack.remove_word(text).tiles, word.tiles)
    end

    def test_can_remove_a_word_whose_letters_are_not_in_order_on_the_rack
        tile_rack = TileRack.new
        tile_rack.append(:B).append(:D).append(:A)
        text = "bad"
        word = Word.new
        word.append(:B).append(:A).append(:D)
        assert_equal(tile_rack.remove_word(text).tiles, word.tiles)
    end

    def test_can_remove_word_with_duplicate_letters
        tile_rack = TileRack.new
        tile_rack.append(:B).append(:E).append(:L).append(:L)
        text = "bell"
        word = Word.new
        word.append(:B).append(:E).append(:L).append(:L)
        assert_equal(tile_rack.remove_word(text).tiles, word.tiles)
    end

    def test_can_remove_word_without_removing_unneeded_duplicate_letters
        tile_rack = TileRack.new
        tile_rack.append(:D).append(:A).append(:A).append(:D)
        text = "dad"
        word = Word.new
        word.append(:D).append(:A).append(:D)
        tile_rack.remove_word(text)
        assert_equal(tile_rack.tiles, [:A])
    end

end