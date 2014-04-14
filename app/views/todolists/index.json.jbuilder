json.array!(@todolists) do |todolist|
  json.extract! todolist, :name, :read, :effort, :assigned_to, :created_at, :due_date
  json.url todolist_url(todolist, format: :json)
end