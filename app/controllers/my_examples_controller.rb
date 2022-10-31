class MyExamplesController < ApplicationController
  def fortune_method
    num = rand(3)
    if num == 1
      render json: { message: "Its gonna rain on ur birthday" }
    elsif num == 2
      render json: { message: "Your favorite restaurant will give you a free meal" }
    else
      render json: { message: "They are gonna be all out of soda at the store" }
    end
  end

  def lotto
    count = []
    6.times do
      count << rand(60)
    end
    counts = "#{count[0]}, #{count[1]}, #{count[2]}, #{count[3]}, #{count[4]}, #{count[5]}"
    render json: { message: counts }
  end

  def bottles
    store = []
    num = 99
    99.times do
      num2 = num - 1
      lines = "#{num} bottles of beer on the wall, #{num} bottles of beer! take one down pass it around #{num2} bottles of beer on the wall"
      store << lines
      num = num - 1
    end
    render json: { message: store.join(" ") }
  end
end
