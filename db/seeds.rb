# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Card.create(
	name: "ICBC",
	num: "1234",
	limit: 50000,
	sdate: 2014-5-25,
	pddate: 2014-6-15,
	remark: "remark"
	)
Card.create(
	name: "CCB",
	num: "2345",
	limit: 60000,
	sdate: 2014-5-25,
	pddate: 2014-6-15,
	remark: "remark"
	)