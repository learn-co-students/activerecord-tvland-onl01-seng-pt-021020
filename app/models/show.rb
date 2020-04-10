class Show < ActiveRecord::Base
belongs_to :network
  has_many :characters
  
  
  def actors_list
    
    self.characters.collect do |c|
      "#{c.actor.first_name} #{c.actor.last_name}"
    end
  
  end
  
end