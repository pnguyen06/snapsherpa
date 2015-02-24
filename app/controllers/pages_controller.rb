class PagesController < ApplicationController
  def home
  	@news = News.all.order('date DESC')
  	@brands = Brand.all.order('id ASC')
  end

  def about
  end

  def charts
  end
end
