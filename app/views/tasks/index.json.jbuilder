json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :subject_id
  json.url task_url(task, format: :json)
end
