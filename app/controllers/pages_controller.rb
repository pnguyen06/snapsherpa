class PagesController < ApplicationController
  def home
  	@news = News.all.order('date DESC')
  end

  def about
  end

  def charts
  end
end
