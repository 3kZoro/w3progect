json.extract! userreg, :id, :FirstName, :LastName, :Age, :Email, :City, :Password, :created_at, :updated_at
json.url userreg_url(userreg, format: :json)
