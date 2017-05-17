class UserDecorator < SimpleDelegator
  def self.wrap(collection)
    collection.map do |obj|
      new obj
    end
  end

  def full_name
    first_name + ' ' + last_name
  end

  def age
    todays_year - dob.year
  end

  def full_name_and_age
    "#{full_name}: #{age}"
  end

  private

  def todays_year
    @todays_year ||= Date.today.year
  end
end
