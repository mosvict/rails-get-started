class CommentsController < ApplicationController
  def create
    Comment.create(bulletin_id: params[:bulletin_id], body: params[:comment][:body])
    redirect_to "/bulletins/#{params[:bulletin_id]}"
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to "/bulletins/#{params[:bulletin_id]}"
    end
  end
end
