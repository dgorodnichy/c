# frozen_string_literal: true

class MovieController < ApplicationController

  before_action :set_movie_id, only: :show

  def index
    if params[:query]
      render partial: 'search_grid', locals: { result: search_results }
    else
      render 'index', locals: { result: popular }
    end
  end

  def show

  end

  private

  def set_movie_id
    @movie = Kinopoisk::SearchMovie.new(params[:id]).search
  end

  def search_results
    Kinopoisk::SearchMovies.new(params[:query]).to_json
  end

  def popular
    Kinopoisk::GetPopular.new.to_json
  end
end
