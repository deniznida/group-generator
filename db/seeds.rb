# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cohort = Cohort.create({name: 'web-0915'})

dan = Student.create({ name: "Dan Glatstein", cohort_id: cohort.id})
natalie = Student.create({ name: "Natalie Coley", cohort_id: cohort.id})
jim = Student.create({ name: "Jim Rectenwald", cohort_id: cohort.id})
roslynn = Student.create({ name: "Roslynn Graves", cohort_id: cohort.id})
ben = Student.create({ name: "Ben Stewart", cohort_id: cohort.id})
amanda = Student.create({ name: "Amanda Johns", cohort_id: cohort.id})
meredith = Student.create({ name: "Meredith Edwards", cohort_id: cohort.id})
may = Student.create({ name: "May Lee", cohort_id: cohort.id})
michele = Student.create({ name: "Michele Cavaioni", cohort_id: cohort.id})
matthew = Student.create({ name: "Matthew Billie", cohort_id: cohort.id})
alex = Student.create({ name: "Alexandra Valcourt", cohort_id: cohort.id})
michaels = Student.create({ name: "Michael Sterling", cohort_id: cohort.id})
reuben = Student.create({ name: "Reuben Son", cohort_id: cohort.id})
jessie = Student.create({ name: "Jessie Nadler", cohort_id: cohort.id})
michaelb = Student.create({ name: "Michael Bukantz", cohort_id: cohort.id})
korey = Student.create({ name: "Korey Aaronson", cohort_id: cohort.id})
avi = Student.create({ name: "Avi Turkewitz", cohort_id: cohort.id})
yifan = Student.create({ name: "Yifan Chen", cohort_id: cohort.id})
kj = Student.create({ name: "KJ Angamaiton", cohort_id: cohort.id})
madeline = Student.create({ name: "Madeline Ford", cohort_id: cohort.id})
austin = Student.create({ name: "Austin Gilmour", cohort_id: cohort.id})
hoWon = Student.create({ name: "Ho Won Cheng", cohort_id: cohort.id})
jay = Student.create({ name: "Jay Ribakove", cohort_id: cohort.id})
hilary = Student.create({ name: "Hilary Winn", cohort_id: cohort.id})
hide = Student.create({ name: "Hideyuki Gojima", cohort_id: cohort.id})
mattm = Student.create({ name: "Matthew Main", cohort_id: cohort.id})
tracy = Student.create({ name: "Tracy Lum", cohort_id: cohort.id})
jeff = Student.create({ name: "Jeff Slutzky", cohort_id: cohort.id})
hedi = Student.create({ name: "Hedi Essid", cohort_id: cohort.id})
tatsiana = Student.create({ name: "Tatsiana Borschch", cohort_id: cohort.id})
heather = Student.create({ name: "Heather Lim", cohort_id: cohort.id})
lesly = Student.create({ name: "Lesly Brezillien", cohort_id: cohort.id})




  table_group_type = GroupType.create({ name: "Table Group"}) 
  meetup_group_type = GroupType.create({ name: "MeetUp Group"}) 
  pairprogram_group_type = GroupType.create({ name: "PairProgram Group"})
  project_group_type = GroupType.create({ name: "Project Group"})

 table_group = Group.create({group_type_id: table_group_type.id})
 meetup_group = Group.create({group_type_id: meetup_group_type.id})
 meetup_group2 = Group.create({group_type_id: meetup_group_type.id})
 pairprogramming_group = Group.create({group_type_id: pairprogram_group_type.id})
 pairprogramming_group2 = Group.create({group_type_id: pairprogram_group_type.id})
 pairprogramming_group3 = Group.create({group_type_id: pairprogram_group_type.id})
 pairprogramming_group4 = Group.create({group_type_id: pairprogram_group_type.id})
 project_group = Group.create({group_type_id: project_group_type.id})
 project_group2 = Group.create({group_type_id: project_group_type.id})

 StudentGroup.create([{group_id: table_group.id, student_id: dan.id },
                      {group_id: table_group.id, student_id: natalie.id},
                      {group_id: table_group.id, student_id: jim.id},
                      {group_id: table_group.id, student_id: roslynn.id},
                      {group_id: table_group.id, student_id: ben.id},
                      {group_id: table_group.id, student_id: amanda.id},
                      {group_id: table_group.id, student_id: meredith.id},
                      {group_id: table_group.id, student_id: may.id},

                      {group_id: meetup_group.id, student_id: michele.id},
                      {group_id: meetup_group.id, student_id: matthew.id},
                      {group_id: meetup_group.id, student_id: alex.id},

                      {group_id: meetup_group2.id, student_id: michaels.id},
                      {group_id: meetup_group2.id, student_id: reuben.id},

                      {group_id: pairprogramming_group.id, student_id: jessie.id},
                      {group_id: pairprogramming_group.id, student_id: michaelb.id},
                      {group_id: pairprogramming_group2.id, student_id: korey.id},
                      {group_id: pairprogramming_group2.id, student_id: avi.id},
                      {group_id: pairprogramming_group3.id, student_id: yifan.id},
                      {group_id: pairprogramming_group3.id, student_id: kj.id},
                      {group_id: pairprogramming_group4.id, student_id: madeline.id},
                      {group_id: pairprogramming_group4.id, student_id: austin.id},
                      
                      {group_id: project_group.id, student_id: hoWon.id},
                      {group_id: project_group.id, student_id: jay.id},
                      {group_id: project_group.id, student_id: hilary.id},
                      {group_id: project_group.id, student_id: hide.id},
                      {group_id: project_group2.id, student_id: mattm.id},
                      {group_id: project_group2.id, student_id: tracy.id},
                      {group_id: project_group2.id, student_id: jeff.id}])
