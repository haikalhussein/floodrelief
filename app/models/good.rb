class Good < ActiveRecord::Base
  
  belongs_to :user, :class_name => "User", :foreign_key => "contact_person_id"
  belongs_to :relief_centre, :class_name => "ReliefCentre", :foreign_key => "relief_centre_id"
end
