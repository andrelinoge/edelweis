class NewsController < ApplicationController
  def index
    @posts = Post.ordered.page(params[:page]).per(10)
  end
end
