class PriorityTaskController < ApplicationController
  def index
    @tasks = current_user.tasks
  end
end
