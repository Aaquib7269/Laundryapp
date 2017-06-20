class Employe < ActiveRecord::Base
   belongs_to :designation
  has_one :branch

  validates_presence_of :e_name 
  validates_presence_of :e_no
  validates_presence_of :e_address
  validates_presence_of :e_email



 def self.manager_list
     self.joins(:designation).where('designations.title = ?', 'Manager').map{|e| [e.e_name,e.id, class: "form-control"]}
  end

end
