Attendee.destroy_all
Event.destroy_all

puts "creating seeds..."

events = []
events << Event.create({name: "Nobody's Baby Shower", address: "7 SE 1st Ave, Gainesville, FL 32601", start_time: "8:00 pm", end_time: "2:00 am"})
events << Event.create({name: "Nobody's Wedding", address: "3091 SW 115th Terrace, Gainesville, FL 32601", start_time: "8:00 pm", end_time: "2:00 am"})
puts "Done!"
