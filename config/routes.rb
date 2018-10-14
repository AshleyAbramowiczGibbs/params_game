Rails.application.routes.draw do
  namespace :api do
    get "/guessing_game" => "params_game#first_letter_method"
    get "/guessing_game" => "params_game#guess_number_method"
  end
end
