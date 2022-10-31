Rails.application.routes.draw do
  get "/fortune_path", controller: "my_examples", action: "fortune_method"
  get "/lotto", controller: "my_examples", action: "lotto"
  get "/bottles", controller: "my_examples", action: "bottles"
end
