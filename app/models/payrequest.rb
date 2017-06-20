class Payrequest < ActiveRecord::Base
belongs_to :customer

	validates_presence_of :Date
	validates_presence_of :Time
	validates_presence_of :customer_id
end
