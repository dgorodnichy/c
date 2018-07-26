# frozen_string_literal: true

class Search < Stream
  attr_accessor :query

  def initialize(query)
    @query = query
  end

  def result
    KpApi::FilmSearch.new(query).view
  end

end
