class CommentsController < ApplicationController

  def index
    user = User.find(params[:user_id])
    # render json: user.contacts + user.contact_shares
    render json: {
      comments: user.comments,
    }
  end
end
