class Ourservice < ActiveRecord::Base

	validates_presence_of :service_type 
	validates_presence_of :cost

end
