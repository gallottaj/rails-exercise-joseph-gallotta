json.array! @organizations do |organizations|
  json.id organizations.id
  json.organization organizations.organization
  json.domain organizations.domain
  json.organization_phone organizations.organization_phone
  json.people_count organizations.people.count
  json.address organizations.address
end

