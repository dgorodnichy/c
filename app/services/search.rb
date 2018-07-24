class Search

  attr_accessor :query

  def initialize(query)
    @query = query
  end

  def call
    return {a: 'b', c: 'd', e: query}
  end
end
