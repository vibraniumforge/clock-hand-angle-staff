def clock_angle(time)
    hours = time.split(":").first.to_f
    minutes = time.split(":").last.to_f
    minutes_offset_for_hour_angle = ((360/12/60.0) * minutes)
    hours_angle = ((360/12) * hours) + minutes_offset_for_hour_angle
    minutes_angle = ((360/60) * minutes)
    [(360-(hours_angle-minutes_angle).abs), ((hours_angle-minutes_angle).abs)].min
end
