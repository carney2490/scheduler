time = Time.now


day = time.wday
day_of_week = time.strftime('%A')

def day_of_week(time)
    day = time.wday
    day_of_week = time.strftime('%A')
    puts "day is #{day}"
end

puts "day is #{day}"
puts "time is #{time}"
puts "day of week is #{day_of_week}"




availablity = ""
working = ""


def available(availablity)
    if availablity == true
        true
    else
        false
    end
end

def already_on_schedule(working, worked_last_week)
    if working == true
        availablity = false
    elsif worked_last_week(worked_last_week) == false
        availablity = false
    else
        availablity = true
    end
end

def worked_last_week(worked_last_week)
    if worked_last_week == true
        true
    else
        false
    end
end


