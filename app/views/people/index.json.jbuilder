json.people do
  json.array! @people do |person|
    json.id person.id
    json.name person.name
    json.job_title person.job_title
    json.email_address person.email_address
    json.phone person.phone
    json.organization person.organization
    if person.organization.address.nil?
      json.address nil
    else
      json.address do
        json.id person.organization.address.id
        json.street person.organization.address.street
        json.city person.organization.address.city
        json.state person.organization.address.state
        json.zip person.organization.address.zip
      end
    end
  end
end