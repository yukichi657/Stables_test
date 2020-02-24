json.extract! profile, :id, :name, :photo, :age, :sex, :medical_check, :created_at, :updated_at
json.url profile_url(profile, format: :json)
