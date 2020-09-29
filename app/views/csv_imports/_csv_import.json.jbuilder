json.extract! csv_import, :id, :filename, :imported, :created_at, :updated_at
json.url csv_import_url(csv_import, format: :json)
