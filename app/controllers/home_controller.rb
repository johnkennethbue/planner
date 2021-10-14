class HomeController < ApplicationController
  def index
    @categories = current_user.categories
    @tasks = current_user.tasks
  end
end
