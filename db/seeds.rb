# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
Model_name.create(culom_name :'data1', culom_name: 'data2') #lecord 1 line

Model_name.create(culom_name :'data1', culom_name: 'data2') #lecord 1 line
.
.
#last lecord
=end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


########employee model############


Employee.create(emp_id: '1', branch: 'Fukuoka' , name: 'president1', birth: '1972-09-08', age: '45', judgment: 'NO.2', task: '', department: '', residence: '', fam_spouse: '0', fam_except_spouse: '0', position: '')
Employee.create(emp_id: '2', branch: 'Fukuoka' , name: 'employee1', birth: '1978-06-15', age: '39', judgment: 'Half', task: 'Development', department: 'A', residence: 'Fukuoka', fam_spouse: '1', fam_except_spouse: '3', position: 'Manager')
Employee.create(emp_id: '3', branch: 'Fukuoka' , name: 'employee2', birth: '1981-11-26', age: '36', judgment: 'Half', task: 'Development', department: 'A', residence: 'Kitakuyshu', fam_spouse: '1', fam_except_spouse: '3', position: 'Manager')
Employee.create(emp_id: '4', branch: 'Fukuoka' , name: 'employee3', birth: '1979-03-09', age: '39', judgment: 'Half', task: 'Development', department: 'A', residence: 'Fukuoka', fam_spouse: '0', fam_except_spouse: '0', position: 'Manager')
Employee.create(emp_id: '5', branch: 'Fukuoka' , name: 'employee4', birth: '1984-06-04', age: '33', judgment: 'Half', task: 'Development', department: 'A', residence: 'Tokyo', fam_spouse: '0', fam_except_spouse: '0', position: 'Assistant Leader')
