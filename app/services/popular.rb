# frozen_string_literal: true

class Popular < Stream
  def result
    KpApi::Top.new(:popular_films).view
  end
end
