module PostsHelper
  def post_params
    params.require(:post).permit(:body)
  end
end
