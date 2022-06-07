feature "player enters name & DOB" do
  scenario "name displayed" do
    sophie_enters_details
    expect(page).to have_text("Sophie")
  end

  scenario "Days to go shown" do
    allow(Date).to receive(:today).and_return(static_future_date)
    sophie_enters_details
    expect(page).to have_text("5 days")
  end

  scenario "it is birthday" do
    allow(Date).to receive(:today).and_return(Date.new(2022,8,15))
    sophie_enters_details
    expect(page).to have_text("Happy birthday")
  end
end