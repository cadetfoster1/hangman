require "minitest/autorun"
require_relative "hangman.rb"

class Testhangmanfunctions <Minitest::Test

	def test_class_returns_name
		hangman = Hangman.new("Toast")
		assert_equal(5,hangman,charcount)
	end
	def test_class_returns_name
		hangman = Hangman.new("Toast")
		assert_equal(["_","_","_","_","_",]),hangman.blank)
	end
	def test_class_returns_name
		hangman = Hangman.new("Toast")
		letter = "A"
		assert_equal(true,hangman,correct,letter?(letter))
	end
	def test_class_user_guess_is_pushed_in_guessing_array
		hangman = Hangman.new("Toast")
		hangman.guessed = ["b","l","c"]
		letter = "y"
		assert_equal(["b","l","c","y"])
	end
	def test_return_correct_index_position
		hangman = Hangman.new("Toast")
		letter = "t"
		hangman.correct_index(letter)
		assert_equal(["t","_","_","_","t"],hangman.correct_blank)
	end
	def test_return_correct_index_position
		hangman = Hangman.new("Toast")
		letter = "o"
		hangman.correct_index(letter)
		assert_equal(["t","o","_","_","t"],hangman.correct_blank)
	end
	def test_return_correct_index_position
		hangman = Hangman.new("Toast")
		letter = "a"
		hangman.correct_index(letter)
		assert_equal(["t","o","a","_","t"],hangman.correct_blank)
	end
	def test_return_correct_index_position
		hangman = Hangman.new("Toast")
		letter = "s"
		hangman.correct_index(letter)
		assert_equal(["t","o","a","s","t"],hangman.correct_blank)
	