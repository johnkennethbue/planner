class ApplicationController < ActionController::Base
    def new
        respond_to do |format|
          format.html
          format.js
        end
      end
end
