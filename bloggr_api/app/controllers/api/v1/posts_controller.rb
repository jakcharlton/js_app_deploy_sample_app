module Api
  class V1::PostsController < ApplicationController
    def index
      render json: Post.all, status: :ok
    end
  end
end
