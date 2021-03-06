class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end 

    def show
        @genre = Genre.find(params[:id])
    end 

    def new
        @genre = Genre.new
    end 

    def create
        genre = Genre.create(form_param)
        redirect_to genre_path(genre)
    end 

    def edit
        @genre = Genre.find(params[:id])
    end

    def update
        genre = Genre.find(params[:id])
        genre.update(form_param)
        redirect_to genre_path(genre)
    end 

    private

    def form_param
        params.require(:genre).permit(:name)
    end
end
