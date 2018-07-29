# frozen_string_literal: true

module Kinopoisk
  class SearchMovie
    attr_accessor :movie

    def initialize(id)
      @movie = id
    end

    def search
      KpApi::Film.new(@movie).view
    end
  end
end
