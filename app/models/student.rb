class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def change_status
    #<%  @student.change_status %>
    self.active = !self.active
  end

end