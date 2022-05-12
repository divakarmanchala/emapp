class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  def full_name
    if self.first_name || self.last_name
      return self.first_name.capitalize + " " + self.last_name.capitalize
    else  
      return 'Welcome User'
    end
  end

  def profile_letters 
    if self.first_name || self.last_name 
      return self.first_name[0].capitalize + self.last_name[0].capitalize
    else  
      return 'WU'
    end
  end
end
