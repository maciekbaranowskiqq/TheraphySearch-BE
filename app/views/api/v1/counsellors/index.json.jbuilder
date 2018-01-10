json.counsellors do
  json.array! @counsellors, partial: 'api/v1/counsellors/counsellor', as: :counsellor
end
