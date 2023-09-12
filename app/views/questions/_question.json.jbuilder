json.extract! question, :id, :text, :personality_trait_id, :created_at, :updated_at
json.url question_url(question, format: :json)
