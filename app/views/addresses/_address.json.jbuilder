json.extract! address, :id, :company_name, :contact_name, :job_title, :department, :telephone, :fax, :email, :street1, :street2, :city, :state, :country, :zip, :address_group_id, :created_at, :updated_at
json.url address_url(address, format: :json)
