# frozen_string_literal: true

class Search
  attr_accessor :query

  def initialize(query)
    @query = query
  end

  def call
    channels.map do |channel|
      channel.new(query).search
    end.flatten
  end

  private

  def channels
    [Zona]
  end
end
