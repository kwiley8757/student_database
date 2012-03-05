class Skill < ActiveRecord::Base
  belongs_to :form
  has_many :students
end
