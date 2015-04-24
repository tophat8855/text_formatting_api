class TextFormatter
  def self.format_this(text)
    text_array = text.split
    text_array.each_with_index do |word, i|
      if (word.end_with? ".") && (i < text_array.length - 1)
        text_array[i + 1].capitalize!
      end
    end
    text_array[0].capitalize!

    text_array.join(' ')
  end
end
