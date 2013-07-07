class ExerciseCategoriesController < ApplicationController
  # GET /exercise_categories
  # GET /exercise_categories.json
  def index
    @exercise_categories = ExerciseCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exercise_categories }
    end
  end

  # GET /exercise_categories/1
  # GET /exercise_categories/1.json
  def show
    @exercise_category = ExerciseCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exercise_category }
    end
  end

  # GET /exercise_categories/new
  # GET /exercise_categories/new.json
  def new
    @exercise_category = ExerciseCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exercise_category }
    end
  end

  # GET /exercise_categories/1/edit
  def edit
    @exercise_category = ExerciseCategory.find(params[:id])
  end

  # POST /exercise_categories
  # POST /exercise_categories.json
  def create
    @exercise_category = ExerciseCategory.new(params[:exercise_category])

    respond_to do |format|
      if @exercise_category.save
        format.html { redirect_to @exercise_category, notice: 'Exercise category was successfully created.' }
        format.json { render json: @exercise_category, status: :created, location: @exercise_category }
      else
        format.html { render action: "new" }
        format.json { render json: @exercise_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exercise_categories/1
  # PUT /exercise_categories/1.json
  def update
    @exercise_category = ExerciseCategory.find(params[:id])

    respond_to do |format|
      if @exercise_category.update_attributes(params[:exercise_category])
        format.html { redirect_to @exercise_category, notice: 'Exercise category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exercise_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_categories/1
  # DELETE /exercise_categories/1.json
  def destroy
    @exercise_category = ExerciseCategory.find(params[:id])
    @exercise_category.destroy

    respond_to do |format|
      format.html { redirect_to exercise_categories_url }
      format.json { head :no_content }
    end
  end
end
