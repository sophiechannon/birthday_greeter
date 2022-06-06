def sophie_enters_details
  visit "/"
  fill_in "name", with: "Sophie"
  fill_in "day", with: "15"
  select "August", from: "month"
  click_button "Confirm"
end

def static_past_date
  Date.new(2022,6,6)
end

def static_future_date
  Date.new(2022,8,17)
end