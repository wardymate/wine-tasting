class Event < ActiveRecord::Base

  def full_date
    date.strftime("%A %e %B %Y")
  end

end
