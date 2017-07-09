Event.destroy_all

puts "creating seeds..."

events = []
events << Event.create!({name: "Nobody's Baby Shower", location: "7 SE 1st Ave, Gainesville, FL 32601", start_time: "8:00 pm", end_time: "2:00 am"})

puts "Done!"
