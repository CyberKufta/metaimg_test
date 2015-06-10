class PagesController < ApplicationController

  def index
    @image = Image.new
    @images = Image.order('created_at DESC')

  end
end
