json.extract! customer, :id, :c_name, :c_phoneno, :c_email, :address, :created_at, :updated_at
json.url customer_url(customer, format: :json)
