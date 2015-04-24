require 'text/text_formatter'

class TextController < ApplicationController
  def index
    @text = params["text"]
    result = TextFormatter.format_this(@text)
    results = Hash.new()
    results["text"] = result
    render json: results
  end
end
