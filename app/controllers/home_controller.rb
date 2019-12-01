class HomeController < ApplicationController
  def top
    @total = Post.all.sum(:amount)
  end
end
