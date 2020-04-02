require "time"

def quarantine 
  unless corona_finished?
    stay_tf_home
  end
end

def corona_finished?
  false
end

def stay_tf_home
  puts "🏠"
  sleep(14.days)
end

quarantine