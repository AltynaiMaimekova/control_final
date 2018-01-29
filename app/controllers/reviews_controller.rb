class ReviewsController < ApplicationController
  before_action :set_review, only: [:destroy]
  before_action :set_place

  # GET /reviews
  # GET /reviews.json
  # def index
  #   @reviews = Review.all
  # end

  # GET /reviews/1
  # GET /reviews/1.json
  # def show
  # end

  # GET /reviews/new
  def new
    @review = @place.reviews.build
    @place = Place.find(params[:place_id])
  end

  # GET /reviews/1/edit
  # def edit
  # end

  # POST /reviews
  # POST /reviews.json
  def create
   
    @review = @place.reviews.build(review_params)
    @review.user_id = current_user.id
    @review.place_id = @place.id

    respond_to do |format|
      if @review.save
        format.html { redirect_to place_path(@place), notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  # def update
  #   respond_to do |format|
  #     if @review.update(review_params)
  #       format.html { redirect_to place_path(@place), notice: 'Review was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @review }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @review.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to place_path(@place), notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    def set_place
      @place = Place.find(params[:place_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:content, :food, :service, :interior, :place_id, :user_id)
    end
end
