# frozen_string_literal: true

class MainPageController < ApplicationController
  def index; end

  def search
    result = Search.new(params[:query]).call
    render partial: 'movies_grid', locals: { result: result }
  end
end
