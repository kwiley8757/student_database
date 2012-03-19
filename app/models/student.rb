class Student < ActiveRecord::Base
  belongs_to :skill
  has_attached_file :photo, :styles => { :small => "200x200>"}

end
