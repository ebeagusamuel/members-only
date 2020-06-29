module PostsHelper
  def post_params
    params.require(:post, :user).permit(:body, :user_id)
  end
end
