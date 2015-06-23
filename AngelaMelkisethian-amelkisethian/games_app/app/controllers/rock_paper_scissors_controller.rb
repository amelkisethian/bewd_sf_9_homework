class RockPaperScissorsController < ApplicationController

  def new
    @rock_paper_scissors = secret_numbers
  end

  def show
    @rock_paper_scissors = secret_numbers.sample
    @chosen_number = params[:id].to_i
    @winner = is_winner?
  end

  private

  def secret_numbers
    (0..2).to_a
  end

  def is_winner?
    @rock_paper_scissors == @chosen_number
  end
end
