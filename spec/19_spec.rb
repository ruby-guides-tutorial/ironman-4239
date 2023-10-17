class Cowboy
  def initialize(name)
    @name = name
  end
  
  def fighting?
    true
  end
  
  def draw_the_gun
    "Bang!!!"
  end
  
  def be_shot
    "Help me..."
  end
  
  def continue?
    false
  end
end


class Bar
  attr_reader :cow_boy
  
  def initialize(cow_boy)
    @cow_boy = cow_boy
  end
  
  def start_fighting
    if cow_boy.fighting?
      cow_boy.draw_the_gun
      cow_boy.be_shot
      cow_boy.continue?
    end
  end
end

RSpec.describe "double method" do
  it "can defined method to be invoked" do
    basketball_player = double("Lebron James", dunk: "Ah!!!!", shoot: "Goal!!!!")
    expect(basketball_player.dunk).to eq("Ah!!!!")
  end
end