class Api::ParamsGameController < ApplicationController

  def first_letter_method
    @input_name = params["name"]
    if @input_name[0] == "a" || @input_name[0] == "A"
      @message = "Your name starts with the first letter of the alphabet!"

  else 
    @message = "You name doesn't start with the first letter of the alphabet."

    end
    render "params.json.jbuilder"
  end
  def guess_number_method
    @user_guess = params["guess"]
    if @user_guess.to_i < 50
      @guess_status = "Too low, guess again!"
  elsif @user_guess.to_i == 50
    @guess_status = "You win!"
  else 
    @guess_status = "Too high, guess again!"
    end
    render "params.json.jbuilder"
  end
end