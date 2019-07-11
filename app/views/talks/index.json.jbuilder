json.array! @new_talk do |talk|
  json.id       talk.id
  json.message  talk.message
  json.user_id  talk.user.id
  json.group_id talk.users_room_id
end
