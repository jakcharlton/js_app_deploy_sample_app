module Admin
  class Api::PostsController < ApplicationController
    def index
      render json: Post.all, each_serializer: PostSerializer, status: :ok
    end

    def update
      post = Post.find params[:id]
      post.update_attributes post_params
      render json: post, each_serializer: PostSerializer
    end

    private

    def post_params
      params.require(:post).permit :title, :body, :author
    end
  end
end
