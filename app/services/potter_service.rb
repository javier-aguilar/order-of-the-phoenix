class PotterService
  def initialize()
  end

  def list_houses
    binding.pry
    get_json("houses?key=#{ENV['API_KEY']}")
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
