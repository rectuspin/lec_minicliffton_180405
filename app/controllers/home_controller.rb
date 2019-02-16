class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def category2
    @posts = Post.where(category2: '연습')
  end

  def new
  end

  def create
    @post = Post.new
    @post.name = params[:name]
    @post.title = params[:title]
    @post.content = params[:content]
    @post.category2 = params[:category2]
    
    @post.option = params[:option]
    
    @post.save
    
    redirect_to '/home/index'
  end

  def destroy
    post = Post.find(params[:post_id])
    post.destroy
    redirect_to '/home/index'  
  end

  def edit
    @post = Post.find(params[:post_id])
  end

  def update
    post = Post.find(params[:post_id])
    post.name = params[:name]
    post.title = params[:title]
    post.content = params[:content]
    post.category2 = params[:category2]
    post.save
    
    redirect_to '/home/index'
  end
end
