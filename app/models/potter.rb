module Potter
  def self.list_house_members_in_oof(house)
    data = PotterService.new.list_characters_by_house_and_in_oof(house)
    data.map do |member|
      info = { member: member[:_id],
               name: member[:name],
               role: member[:role],
               patronus: member[:patronus],
               house: member[:house] }
      Member.new(info)
    end
  end
end
