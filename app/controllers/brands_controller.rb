class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  has_scope :industry, :deals, :previews

  def index
    @brands = apply_scopes(Brand.all.order('momentum DESC, name').search(params[:search]))
  end

  def show
  end

  def new
    @brand = Brand.new
  end

  def edit
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to @brand, notice: 'Brand was successfully created.'
    else
        render action: 'new'
    end
  end

  def update
    if @brand.update(brand_params)
      redirect_to @brand, notice: 'Brand was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @brand.destroy
    redirect_to brands_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brand_params
      params.require(:brand).permit(:name, :username, :momentum, :description, :industry, :website, :facebook, :twitter, :instagram, :history, :deals, :previews, :image)
    end

    def load_suggestions
      @suggestions = Brand.select(:name)
      render json: @suggestions
    end
end
