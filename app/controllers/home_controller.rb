class HomeController < ApplicationController
  def index
    @categories = Category.all
    @tasks = Task.all
  end
end
