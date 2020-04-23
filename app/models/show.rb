class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network

    def actors_list
        self.characters.map do |c|
            "#{c.actor.first_name} #{c.actor.last_name}"
        end
    end

end