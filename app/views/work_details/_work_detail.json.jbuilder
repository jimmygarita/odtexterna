json.extract! work_detail, :id, :media_name, :size, :cost, :details, :created_at, :updated_at
json.url work_detail_url(work_detail, format: :json)
