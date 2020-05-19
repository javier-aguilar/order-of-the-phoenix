module Potter
  class Member
    attr_reader :id, :name, :role, :patronus, :house

    def initialize(info)
      @id = info[:id]
      @name = info[:name]
      @role = info[:role]
      @patronus = info[:patronus]
      @house = info[:house]
    end
  end
end
