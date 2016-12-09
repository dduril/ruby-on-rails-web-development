# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

User.create! [
  { username: 'Fiorina', password_digest: 'pw135' },
  { username: 'Trump', password_digest: 'pw245' },
  { username: 'Carson', password_digest: 'pw358' },
  { username: 'Clinton', password_digest: 'pw579' }
]

User.find_by!(username: 'Fiorina').create_profile(gender: 'female', birth_year: 1954, first_name: 'Carly', last_name: 'Fiorina')
User.find_by!(username: 'Trump').create_profile(gender: 'male', birth_year: 1946, first_name: 'Donald', last_name: 'Trump')
User.find_by!(username: 'Carson').create_profile(gender: 'male', birth_year: 1951, first_name: 'Ben', last_name: 'Carson')
User.find_by!(username: 'Clinton').create_profile(gender: 'female', birth_year: 1947, first_name: 'Hillary', last_name: 'Clinton')

User.first.todo_lists.create! [{ list_name: '1', list_due_date: Date.today + 1.year }]
User.second.todo_lists.create! [{ list_name: '2', list_due_date: Date.today + 1.year }]
User.third.todo_lists.create! [{ list_name: '3', list_due_date: Date.today + 1.year }]
User.fourth.todo_lists.create! [{ list_name: '4', list_due_date: Date.today + 1.year }]

TodoList.first.todo_items.create! [
  { title: '1', description: 'Lorem ipsum dolor sit amet.', due_date: Date.today + 1.year },
  { title: '2', description: 'Aliquam condimentum eros sit amet massa ultrices, in feugiat lorem pretium.', due_date: Date.today + 1.year },
  { title: '3', description: 'Nam eu metus auctor, semper odio in, iaculis ipsum.', due_date: Date.today + 1.year },
  { title: '4', description: 'Quisque in lacus laoreet, luctus felis id, scelerisque purus.', due_date: Date.today + 1.year },
  { title: '5', description: 'Proin nec diam sed tortor pharetra mattis eget nec ligula.', due_date: Date.today + 1.year }
]

TodoList.second.todo_items.create! [
  { title: '1', description: 'Fusce eget enim vel ex rhoncus posuere quis eu justo.', due_date: Date.today + 1.year },
  { title: '2', description: 'Nullam molestie augue nec velit varius, sed suscipit lacus blandit.', due_date: Date.today + 1.year },
  { title: '3', description: 'Proin vulputate odio at turpis congue, nec egestas erat pulvinar.', due_date: Date.today + 1.year },
  { title: '4', description: 'Pellentesque sed dui nec felis imperdiet varius.', due_date: Date.today + 1.year },
  { title: '5', description: 'Suspendisse vitae massa ut justo maximus placerat vel eget magna.', due_date: Date.today + 1.year }
]

TodoList.third.todo_items.create! [
  { title: '1', description: 'Maecenas porttitor tortor vestibulum convallis auctor.', due_date: Date.today + 1.year },
  { title: '2', description: 'Ut ut risus in dolor dapibus porta eu quis erat.', due_date: Date.today + 1.year },
  { title: '3', description: 'Morbi imperdiet risus vitae diam tincidunt, ac vehicula erat gravida.', due_date: Date.today + 1.year },
  { title: '4', description: 'Aenean luctus urna nec pulvinar maximus.', due_date: Date.today + 1.year },
  { title: '5', description: 'Donec facilisis augue vitae lacus posuere, a varius orci venenatis.', due_date: Date.today + 1.year }
]

TodoList.fourth.todo_items.create! [
  { title: '1', description: 'Aliquam ac dui quis elit congue semper et eu dolor.', due_date: Date.today + 1.year },
  { title: '2', description: 'Phasellus non est placerat, aliquam neque vitae, iaculis turpis.', due_date: Date.today + 1.year },
  { title: '3', description: 'Sed eget dolor eget urna consequat scelerisque.', due_date: Date.today + 1.year },
  { title: '4', description: 'Cras non urna porttitor, euismod neque id, bibendum urna.', due_date: Date.today + 1.year },
  { title: '5', description: 'Aenean maximus magna id mauris maximus, non vehicula ante venenatis.', due_date: Date.today + 1.year }
]