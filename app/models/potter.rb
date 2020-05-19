module Potter
  def self.list_houses
    data = PotterService.new.list_houses
    binding.pry
    data.map { |repo| House.new(repo[:name], repo[:html_url]) }
  end
end
