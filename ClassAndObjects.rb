###########################################
=begin
class Monkey
    attr_reader :state
    def initialize
        @state = [:stop, :run].sample
    end

    def state
        puts @state
    end

    def run
        @state = :run
    end

    def stop
        @state = :stop
    end

end

m1 = Array.new(10) {Monkey.new}

=end

################################################
=begin
class Robot
    attr_accessor :x, :y
    def initialize
        @x = 0
        @y = 0
    end

    def right
        self.x += 1
    end

    def left
        self.x -= 1
    end

    def up
        self.y += 1
    end

    def down
        self.y -= 1
    end
end

arr = Array.new(10) {Robot.new}
arr.each do |robot|
    m = [:right, :left, :up, :down].sample
    robot.send(m)
    puts "x = #{robot.x}, y = #{robot.y}"
end
=end

#############################################

class Robot
    attr_accessor :x, :y
    def initialize(options={})
        @x = options[:x] || 0
        @y = options[:y] || 0
    end

    def right
        self.x += 1
    end

    def left
        self.x -= 1
    end

    def up
        self.y += 1
    end

    def down
        self.y -= 1
    end
end

class Commander
    def move(who)
    m = [:right, :left, :up, :down].sample
    who.send(m)
    end
end

commander = Commander.new

arr = Array.new(10) {Robot.new}

loop do
    puts "\e[H\e[2J"

    (12).downto(-12) do |y|
        (-30).upto(30) do|x|
            found = arr.any? {|robot| robot.x == x && robot.y == y}
            if found
                print '*'
            else
                print '.'
            end
        end
    end
    puts


    arr.each {|robot| commander.move(robot)}

    sleep 0.5
end



