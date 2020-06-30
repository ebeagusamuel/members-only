class PostsController < ApplicationController
  include PostsHelper

  before_action :authenticate_user!, only: [:new, :create]

  def index
    @posts = Post.all
  end

  def new
    # @user = User.find(params[:id])
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new, notice: 'Post successfully created.'
    end
  end
end
