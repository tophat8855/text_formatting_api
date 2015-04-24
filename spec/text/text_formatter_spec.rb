require 'rails_helper'
require 'text/text_formatter'

RSpec.describe TextFormatter do
  describe "formatting the text" do
    it 'Takes text and fixes the whitespace' do
      text = "Hello World.      The quick brown fox jumps over the lazy dog."
      resulting_text = TextFormatter.format_this(text)

      expect(resulting_text).to eq("Hello World. The quick brown fox jumps over the lazy dog.")
    end

    it "considers a new line whitespace to be removed" do
      text = "Hello World.\n  The quick brown fox jumps over the lazy dog."
      resulting_text = TextFormatter.format_this(text)

      expect(resulting_text).to eq("Hello World. The quick brown fox jumps over the lazy dog.")
    end

    it "capitalizes first word of a sentence" do
      text = "hello World. the quick brown fox jumps over the lazy dog."
      resulting_text = TextFormatter.format_this(text)

      expect(resulting_text).to eq("Hello World. The quick brown fox jumps over the lazy dog.")
    end
  end
end
