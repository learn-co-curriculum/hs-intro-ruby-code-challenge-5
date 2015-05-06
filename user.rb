class User
  attr_accessor :age, :name, :birthday, :email, :password, :first_name, :last_name, :friends, :num_friends


  def initialize(email, password, first_name, last_name)
    @email = email
    @password = password
    @first_name = first_name
    @last_name = last_name
    @friends = []
    @num_friends = 0
    @wall = []
  end

  def post_on_wall(message)
    @wall.push(message)
  end

  def view_wall
    @wall.each do |post|
      post
    end
  end

  def poke(friend)
    "You poked #{friend.first_name} #{@poke_num} times."
    @poke_num += 1
  end

  def add_friend(friend)
    friends.push("#{friend.first_name} #{friend.last_name}")
    friend.friends.push("#{self.first_name} #{self.last_name}")
    @num_friends = friends.length
    friend.num_friends += 1
  end

  def unfriend(friend)
    @friends.delete("#{friend.first_name} #{friend.last_name}")
    @num_friends = friends.length
    friend.num_friends -= 1
  end

end

erin = User.new("ering_email@gmail.com", "password1234", "Erin", "Polly")

julia = User.new("julia_email@gmail.com", "chemislife", "Julia", "Marshall")

maisie = User.new("maisie_email@gmail.com", "isaybaggle", "Margaret", "Fitzgerald")

erin.add_friend(julia)
erin.add_friend(maisie)
erin.unfriend(maisie)
puts erin.friends
puts erin.num_friends
erin.post_on_wall("I love Ruby!")
erin.post_on_wall("Maisie is my best friend!")
erin.post_on_wall("This history paper is so rough :(")
erin.post_on_wall("Get ready for track season.  First practice on Monday!")
puts erin.view_wall