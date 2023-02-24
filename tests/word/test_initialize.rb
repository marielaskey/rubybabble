require_relative "../../word.rb"
require 'minitest/autorun'

# unit tests for the Word::initialize method. 
class Word::TestInitialize < MiniTest::Test
 
    # checks all 26 tile values to confirm they return the proper points
    def test_create_empty_word
        word = Word.new
        assert_equal(0, word.score)
        end
    end