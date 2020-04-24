class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name 
    "#{self.first_name} #{self.last_name}"
  end 
  
  def list_roles
    self.characters.map do |character| 
      #iterating over all the characters of a particular actor #getting the character's name, and the name of the show that character is in
      "#{character.name} - #{character.show.name}"
      
    end
  end 
  
end