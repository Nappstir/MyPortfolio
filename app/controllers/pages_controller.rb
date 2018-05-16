class PagesController < ApplicationController
  def home
    @test = Blog.all
  end

  def about
  end

  def contact
  end
end
