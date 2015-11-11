# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  cohort = Cohort.create({name: 'web-0915'})
  students = Student.create([ { name: "Lesly Brezillien", cohort_id: cohort.id}, 
                              { name: "Heather Lim", cohort_id: cohort.id}, 
                              { name: "Tatsiana Borschch", cohort_id: cohort.id}, 
                              { name: "Hedi Essid", cohort_id: cohort.id}, 
                              { name: "Jeff Slutzky", cohort_id: cohort.id}, 
                              { name: "Tracy Lum", cohort_id: cohort.id}, 
                              { name: "Matthew Main", cohort_id: cohort.id}, 
                              { name: "Hideyuki Gojima", cohort_id: cohort.id}, 
                              { name: "Hilary Winn", cohort_id: cohort.id}, 
                              { name: "Jay Ribakove", cohort_id: cohort.id}, 
                              { name: "Ho Won Cheng", cohort_id: cohort.id}, 
                              { name: "Austin Gilmour", cohort_id: cohort.id}, 
                              { name: "Madeline Ford", cohort_id: cohort.id}, 
                              { name: "KJ Angamaiton", cohort_id: cohort.id}, 
                              { name: "Yifan Chen", cohort_id: cohort.id}, 
                              { name: "Avi Turkewitz", cohort_id: cohort.id}, 
                              { name: "Korey Aaronson", cohort_id: cohort.id}, 
                              { name: "Michael Bukantz", cohort_id: cohort.id}, 
                              { name: "Jessie Nadler", cohort_id: cohort.id}, 
                              { name: "Reuben Son", cohort_id: cohort.id}, 
                              { name: "Michael Sterling", cohort_id: cohort.id}, 
                              { name: "Alexandra Valcourt", cohort_id: cohort.id}, 
                              { name: "Matthew Billie", cohort_id: cohort.id}, 
                              { name: "Michele Cavaioni", cohort_id: cohort.id}, 
                              { name: "May Lee", cohort_id: cohort.id}, 
                              { name: "Meredith Edwards", cohort_id: cohort.id}, 
                              { name: "Amanda Johns", cohort_id: cohort.id}, 
                              { name: "Ben Stewart", cohort_id: cohort.id}, 
                              { name: "Roslynn Graves", cohort_id: cohort.id}, 
                              { name: "Jim Rectenwald", cohort_id: cohort.id}, 
                              { name: "Natalie Coley", cohort_id: cohort.id}, 
                              { name: "Dan Glatstein", cohort_id: cohort.id}])
  table_group = GroupType.create({ type: "Table Group"}) 
  meetup_group = GroupType.create({ type: "MeetUp Group"}) 
  pairprogram_group = GroupType.create({ type: "PairProgram Group"})
  project_group = GroupType.create({ type: "Project Group"})

 
