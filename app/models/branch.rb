class Branch < ActiveRecord::Base
 
  belongs_to :employe
 

  validates_presence_of :branch_name
  validates_presence_of :branch_address
  validates_presence_of :phoneno
  
end
