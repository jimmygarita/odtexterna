json.extract! work_order, :id, :date_start, :date_end, :status, :details, :created_at, :updated_at
json.url work_order_url(work_order, format: :json)
