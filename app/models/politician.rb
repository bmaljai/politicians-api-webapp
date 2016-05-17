class Politician < ActiveRecord::Base
  def full_name
    return "#{first_name + " " + last_name}"
  end

  def party_name
    if party
      return "Democrat"
    else
      return "Republican"
    end
  end

  def age
    today = Date.today
    year_age = today.year - birthdate.year - 1
    
    if birthdate.month < today.month || birthdate.month == today.month && birthdate.day < today.day
      year_age += 1
    end

    return year_age
  end
end
