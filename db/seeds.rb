# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.create(name: "crazy project", description: "what an amazing project")

Project.create(name: "Fast project", description: "what an amazing fast project")
Project.create(name: "Lazzy project", description: "what an amazing lazzy project")
Project.create(name: "poor project", description: "what an amazing poor project")
Project.create(name: "the project", description: "what an amazing project")
Project.create(name: "big project", description: "what an amazing big project")
Project.create(name: "smart project", description: "what an amazing smart project")
Project.create(name: "quick project", description: "what an amazing quick project")
Project.create(name: "polite project", description: "what an amazing politeproject")
Project.create(name: "serious project", description: "what an amazing serious project")
Project.create(name: "tea project", description: "what an amazing tea project")
Project.create(name: "coffee project", description: "what an amazing coffee project")

TimeEntry.create(project_id: 2, hours: 10, minutes: 30, comments: "commenting the time entry")
TimeEntry.create(project_id: 4, hours: 30, minutes: 20, comments: "commenting  other the time entry")

# another way

another_project = Project.create(name: "coffee project", description: "what an amazing coffee project")
TimeEntry.create(hours: 6).project = another_project
TimeEntry.create(hours:4, project_id:2)

# another way

project = Project.create(name:"Time tracking app")
project.time_entries.create(hours:6)
