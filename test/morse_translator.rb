require "minitest/autorun"
require "minitest/emoji"
require "./lib/Morse_translator"

class MorseCodeTest < MiniTest::Test
  def test_it_exitst
    morse_translator = MorseTranslator.new

    assert_instance_of MorseTranslator, morse_translator
  end

  def test_it_can_translate
    morse_translator = MorseTranslator.new

    expected = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, morse_translator.translate("hello world")
  end
end