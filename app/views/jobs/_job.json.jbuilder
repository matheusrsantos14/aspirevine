json.extract! job, :id, :title, :company_name, :location, :company_info, :company_size, :industry, :created_at, :updated_at
json.url job_url(job, format: :json)
