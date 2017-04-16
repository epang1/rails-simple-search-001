class WordsController < ApplicationController

  def index
  end

  def search
    @results = Search.for(params[:keyword])
    if @results.count == 0
      redirect_to '/words/no_results'
    elsif @results.count == 1
      @word = @results.first
      redirect_to @word
    else
      redirect_to '/words/all_results'
    end
  end
  
end
