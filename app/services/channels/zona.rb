# frozen_string_literal: true

class Zona
  URL = 'https://w6.zona.plus/ajax/suggest/'

  attr_accessor :query

  def initialize(query)
    @query = query
  end

  def search
    suggestions
  end

  private

  def suggestions
    content = RestClient.get(URL + query, headers = { 'X-Requested-With' => 'XMLHttpRequest' })
    content = JSON.parse(content.body)['items']
    decorate(content)
  end

  def decorate(content)
    content.map do |item|
      {
        name: item["name_rus"],
        url: 'https://w6.zona.plus/movies/' + item["name_id"],
        year: item["year"],
        cover: item["cover"]
      }
    end
  end
end
