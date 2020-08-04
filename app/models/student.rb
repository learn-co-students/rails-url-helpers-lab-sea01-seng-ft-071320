class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active_string
    self.active ? 'active.' : 'inactive.'
  end

  def toggle_active
    self.active ? self.active = false : self.active = true
    self.save
  end
end