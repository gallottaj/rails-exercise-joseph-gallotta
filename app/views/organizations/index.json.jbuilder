json.array! @organizations do |organizations|
  json.id organizations.id
  json.organization organizations.organization
  json.organization_phone organizations.organization_phone
  json.domain organizations.domain
  json.address_id organizations.address_id
end