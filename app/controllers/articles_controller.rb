class ArticlesController < ApplicationController
    
    def index
        @articles = Article.all
        # [#<Article id: 1, title: "hii", text: "bye1", ... ]

        # @articles = Article.connection.select_all("SELECT * FROM articles")
        # puts "@articles is: #{@articles.inspect}"
        # puts "@articles is: #{@articles.rows.first}"
    end
    
    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def edit
        @article = Article.find(params[:id])
    end

    def create
        #the line under just renders the hash created by saving an article from the page
        #there wasn't any database at that time so just the whole hash eas displayed.
        # render plain: params[:article].inspect
        
        #creating object from the model under global variable @article 
        #where the database :article is called

        # puts "params are: #{article_params.inspect}"

        @article = Article.new(article_params)
        #a message is saved to the database
        if @article.save
            redirect_to @article
        #and the pages is redirected to the main page
        else
            render "new"
        end

        # puts "article is #{article}"
        # puts "@article is #{@article}"

        
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            redirect_to @article
        else
            render "edit"
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end

    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
end