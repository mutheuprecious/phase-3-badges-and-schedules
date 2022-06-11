# Write your code here.
def badge_maker name
    "Hello, my name is #{name}."
  end
  
  def batch_badge_creator name_list
    name_list.map {|name| badge_maker(name)}
  end
  
  def assign_rooms name_list
    name_list.collect.with_index(1) do |value,index|
      "Hello, #{value}! You'll be assigned to room #{index}!"
    end
  end
  
  def printer name_list
    batch_badge_creator(name_list).each do |name|
      puts name
    end
    assign_rooms(name_list).each do |room| 
      puts room
    end
  end