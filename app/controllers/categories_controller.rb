class CategoriesController < ApplicationController
    before_action :set_category, only: [:show, :edit, :update]

    # GET /categories
    # GET /categories.json
    def index
      @categories = Category.all
    
    end
  
    # GET /categories/1
    # GET /categories/1.json
    def show
      @tasks = Task.all
    end
  
    # GET /categories/new
    def new
      @category = Category.new
    end
  
    # GET /categories/1/edit
    def edit
    end
  
    # POST /categories
    # POST /categories.json
    def create
      @category = Category.new(category_params)
  
        if @category.save
          redirect_to "/", notice: 'Category was successfully created.'
        else
          render :new

        end
      end

  
    # PATCH/PUT /categories/1
    # PATCH/PUT /categories/1.json
    def update
        if @category.update(category_params)
        redirect_to "/", notice: 'Category was successfully updated.'
        else
          render :edit
        end
      end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_category
        @category = Category.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def category_params
        params.require(:category).permit(:title, :details)
      end
end
