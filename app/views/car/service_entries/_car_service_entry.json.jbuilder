json.extract! car_service_entry, :id, :service, :date, :mileage, :comments, :car_id, :created_at, :updated_at
json.url car_service_entry_url(car_service_entry, format: :json)
