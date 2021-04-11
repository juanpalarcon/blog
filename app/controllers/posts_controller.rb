class PostsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  def dashboard
  end

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def create

    @post = Post.create(title: params[:title], image_url: params[:image_url], content: params[:content])
    
  end

  
end
