class Show < ActiveRecord::Base
   has_many :characters 
   belongs_to :network

   def actors_list
     self.characters.collect do |l|
      "#{l.actor.first_name} #{l.actor.last_name}"
      end
   
   end
   
end