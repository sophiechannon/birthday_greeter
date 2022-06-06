feature "player enters name & DOB" do
  scenario "name displayed" do
    sophie_enters_details
    expect(page).to have_text("Sophie")
  end

  scenario "Days to go shown" do
    sophie_enters_details
    allow(Date).to receive(:today).and_return(static_future_date)
    expect(page).to have_text("5 days")
  end

  # scenario "it is birthday" do
  #   sophie_enters_details
  #   allow(Date).to receive(:today).and_return(Date.new(2022,8,15))
  #   expect(page).to have_text("Happy birthday")
  # end
end