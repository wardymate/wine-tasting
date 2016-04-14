class Event < ActiveRecord::Base

  has_many :wines

  def full_date
    date.strftime("%A %e %B %Y")
  end

end
