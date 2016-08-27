class BloggerController < ApplicationController
  def show
    @blogger = User.find(params[:id])
  end
end
