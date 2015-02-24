class PagesController < ApplicationController
  def home
  	@news = News.all.order('date DESC')
  	@brands = Brand.all.order('id ASC')
  	@recent = Brand.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 6)
  end

  def about
  end

  def charts
  end
end
