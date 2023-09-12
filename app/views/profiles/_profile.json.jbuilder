json.extract! profile, :id, :first_name, :last_name, :phone_number, :about_me, :user_id, :photo, :created_at,
              :updated_at
json.url profile_url(profile, format: :json)
