class PostsController < ApplicationController
  def index
    Post.new(content:'tweet 3').save
    @posts = Post.all
  end
end
