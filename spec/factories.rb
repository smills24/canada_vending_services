Factory.define :user do |user|
  user.first_name            "Steph"
  user.last_name             "Mills"
  user.email                 "steph@example.com"
  user.phone                 "555-5555"
  user.password              "foobar"
  user.password_confirmation "foobar"
end
