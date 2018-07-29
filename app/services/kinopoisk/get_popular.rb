# frozen_string_literal: true

module Kinopoisk
  class GetPopular < Stream
    def result
      KpApi::Top.new(:popular_films).view
    end
  end
end
