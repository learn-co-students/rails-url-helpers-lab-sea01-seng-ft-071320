class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def status
    if self.active == true
        "This student is currently active."
    else
        "This student is currently inactive."
    end
  end

  def toggle_activate
    if self.active == true
        self.update(active: false)
    else
      self.update(active: true)
    end
    self.save
  end
end