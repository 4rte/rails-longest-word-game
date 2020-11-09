class GamesController < ApplicationController
  def new
    @letters = Array.new(9) { ('A'..'Z').to_a.sample }
  end

  def score
    @word = params[:word].upcase.split("")
    @letters = params[:letters].split

    guess = @word
    grid = @letters
    
    if !guess.all? { |letter| guess.count(letter) <= grid.count(letter) }
      @message = "Sorry but #{guess.join} can't be built out of #{grid.join}"
    else
      @message = "Well done"
    end
    
  end


end
