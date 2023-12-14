def stock_picker(days)
  best_day = []

  days.each.with_index do |day, index|
    days[index + 1, days.length - index].each.with_index do |preceeding_day, preceeding_index|
      best_day = [index, index + preceeding_index + 1] if best_day.empty?
      best_day = [index, index + preceeding_index + 1] if preceeding_day - day > days[best_day[1]] - days[best_day[0]]
    end
  end
  best_day
end