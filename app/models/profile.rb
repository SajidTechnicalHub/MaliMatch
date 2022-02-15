class Profile < ApplicationRecord
  belongs_to :user

  before_save :set_age


  def set_age
    age = Date.today.year - (self.dob || Date.today)&.to_date&.year
    age -= 1 if Date.today < (self.dob || Date.today)&.to_date + age.years #for days before birthday
    self.age = age
  end

end
