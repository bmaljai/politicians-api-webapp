json.array! @politicians.each do |politician|
  json.partial! 'politician.json.jbuilder', politician: politician
end