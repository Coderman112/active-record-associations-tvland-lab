class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        self.actors.collect do |t|
            "#{t.first_name} #{t.last_name}"
        end
    end

    def characters_array
        self.characters.collect do |t|
            t.name
        end
    end
  
end