class PostsController < ApplicationController

    def index
      @posts = Post.all
    end
  
    def new
      @post = Post.new
    end
  
    def create
      @post = Post.new
      @post["body"] = params["post"]["body"]
      @post["image"] = params["post"]["image"]
      # TODO: assign logged-in user as user that created the post
      @post.save
      redirect_to "/posts"
    end
  
  end