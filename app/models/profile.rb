class Profile < ActiveRecord::Base
  belongs_to :user

   def full_name

      self.first_name + " " + self.last_name

  end
  
end
