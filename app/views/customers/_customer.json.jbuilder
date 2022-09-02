json.extract! customer, :id, :asuserid, :name, :address_line_1, :address_line_2, :city, :state, :country, :telephone, :customer_type, :created_at, :updated_at
json.url customer_url(customer, format: :json)
