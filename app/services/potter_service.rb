class PotterService
  def initialize()
  end

  def list_characters_by_house_and_in_oof(house)
    get_json("characters?key=#{ENV['API_KEY']}&house=#{house}&orderOfThePhoenix=true")
  end

  private

  def get_json(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new('https://www.potterapi.com/v1/') do |conn|
      conn.adapter Faraday.default_adapter
    end
  end
end
