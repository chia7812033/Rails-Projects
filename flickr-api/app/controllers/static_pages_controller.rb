class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    unless params[:id].blank?
      flickr = Flickr.new
      @photos = flickr.photos.search(user_id: params[:id])
    end
  end
end
