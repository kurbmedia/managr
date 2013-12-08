Managr::Task.blueprint do
  title { "Sample task #{sn}" }
end

Managr::Preference.blueprint do
end

Managr::ScheduledItem.blueprint do
end

Managr::Category.blueprint do
end

Managr::Tag.blueprint do
end

Managr::Tagging.blueprint do
end

Managr::User.blueprint do
  first_name { "Test" }
  last_name  { "User" }
  email { "user#{sn}@testing.com" }
  password { "testpass1" }
  password_confirmation{ "testpass1" }
end