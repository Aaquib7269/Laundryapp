class Customer < ActiveRecord::Base

	validates_presence_of :c_name
	validates_presence_of :c_phoneno
	validates_presence_of :c_email
	validates_presence_of :address

end
