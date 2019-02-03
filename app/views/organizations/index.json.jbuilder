json.array! @organizations do |organization|
  json.id organization.id
  json.organization organization.name
  json.domain organization.domain
  json.organization_phone organization.phone
  json.people_count organization.people.count
  if organization.address.nil?
    json.address nil
  else
    json.address do
      json.id organization.address.id
      json.street organization.address.street
      json.state organization.address.state
      json.city organization.address.city
      json.zip organization.address.zip
    end
  end 
end
