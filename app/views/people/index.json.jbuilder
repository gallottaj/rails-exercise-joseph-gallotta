json.array! @people do |people|
  json.id people.id
  json.name people.name
  json.job_title people.job_title
  json.email_address people.email_address
  json.phone people.phone
  json.organization_id people.organization_id
end