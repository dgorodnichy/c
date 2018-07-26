# frozen_string_literal: true

class Stream

  def result
    raise 'Not implemented!'
  end

  def to_json
    result.map do |movie|
      {
        kp_id: movie[:id],
        name: movie[:name_ru],
        year: movie[:year],
        description: movie[:description],
        genres: movie[:genres],
        cover: movie[:poster_url]
      }
    end
  end
end
