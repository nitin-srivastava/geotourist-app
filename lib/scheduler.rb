require 'rufus/scheduler'
class Scheduler
  attr_accessor :scheduler
  def initialize
    @scheduler = Rufus::Scheduler.new
  end

  def start
    scheduler.every '1s' do
      View.add_random_views
    end
  end

  def stop
    scheduler.stop
  end
end