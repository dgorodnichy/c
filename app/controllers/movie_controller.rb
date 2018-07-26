# frozen_string_literal: true

class MovieController < ApplicationController
  def index
    if params[:query]
      render partial: 'search_grid', locals: { result: search_results }
    else
      render 'index', locals: { result: popular }
    end
  end

  def show; end

  private

  def search_results
    Search.new(params[:query]).to_json
  end

  def popular
    Popular.new.to_json
  end
end
