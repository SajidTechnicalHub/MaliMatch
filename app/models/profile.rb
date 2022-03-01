class Profile < ApplicationRecord
  belongs_to :user

  before_save :set_age
  before_save :set_days
  # before_save :set_promoted_date

  # has_one :request


  def set_age
    age = Date.today.year - (self.dob || Date.today)&.to_date&.year
    age -= 1 if Date.today < (self.dob || Date.today)&.to_date + age.years #for days before birthday
    self.age = age
  end



def set_days
  if subscription !=nil
    now = Date.today.day - subscription.day 
    return now

  else
    subscription = Date.today.day
    return subscription
  end 
end

def set_promoted_date
  if promoteddate !=nil
    now = Date.today.day - promoteddate.day 
    return now

  else
    promoteddate = Date.today.day
    now = Date.today.day - promoteddate.day 
    return now  
  end 

end

end
