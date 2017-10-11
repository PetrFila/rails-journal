class CommentsController < ApplicationController
    protect_from_forgery with: :exception

    def index
        @article = Article.find(params[:photo_id])
        @comments = Comment.all
    end
    
    def edit

    end


    def delete

    end
    
end
