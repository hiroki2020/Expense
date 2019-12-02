class HomeController < ApplicationController
  def total
    @total = Post.all.sum(:amount)
  end
end
