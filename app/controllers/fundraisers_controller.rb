class FundraisersController < ApplicationController
  before_action :set_fundraiser, only: [:show, :edit, :update, :destroy]

  # GET /fundraisers
  def index
    @fundraisers = Fundraiser.all
  end

  # GET /fundraisers/1
  def show
  end

  # GET /fundraisers/new
  def new
    @fundraiser = Fundraiser.new
  end

  # GET /fundraisers/1/edit
  def edit
  end

  # POST /fundraisers
  def create
    @fundraiser = Fundraiser.new(fundraiser_params)

    if @fundraiser.save
      redirect_to @fundraiser, notice: 'Fundraiser was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /fundraisers/1
  def update
    if @fundraiser.update(fundraiser_params)
      redirect_to @fundraiser, notice: 'Fundraiser was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /fundraisers/1
  def destroy
    @fundraiser.destroy
    redirect_to fundraisers_url, notice: 'Fundraiser was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fundraiser
      @fundraiser = Fundraiser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fundraiser_params
      params.require(:fundraiser).permit(:first_name, :last_name, :goal_amount, :current_amount)
    end
end
