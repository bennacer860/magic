require 'gosu'

class Main < Gosu::Window

  def initialize
    super 640, 480, false
    self.caption = "Magic"
    @cursor = Gosu::Image.new(self, "images/screen/cursor.png", false)
  end

  def update
    
  end

  def draw
    @cursor.draw(self.mouse_x, self.mouse_y, 2)
  end
end

Main.new.show
