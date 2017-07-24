class Timer
  attr_accessor :seconds
  
  def initialize
      @seconds=0
  end
  
  def pad num
     if num < 10
         return '0' + num.to_s
     else
         return num.to_s
     end
  end
  
  def time_string
      seconds = @seconds
      
      minutes = seconds/60
      seconds = seconds % 60
      hours = minutes/60
      minutes = minutes % 60
      
      return (pad hours) + ':' + (pad minutes) + ':' + (pad seconds)
  end
end
