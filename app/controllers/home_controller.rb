class HomeController < ApplicationController

  def index
  end

  def upload
    @file_name = params[:image].original_filename
    @file = "#{Rails.root}/public/images/#{@file_name}"
    FileUtils.mv params[:image].tempfile, @file
    @photo = MiniExiftool.new @file
  end

end
