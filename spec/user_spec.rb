require 'user'

describe User do
  subject(:user) { described_class.new("Sophie", "15", "8") }

  it "displays name" do
    expect(user.name).to eq "Sophie"
  end

  it "displays bday this year if bday in future" do
    allow(Date).to receive(:today).and_return static_past_date
    expect(user.birthday).to eq Date.new(2022,8,15)
  end

  it "displays bday this year if bday in past" do
    allow(Date).to receive(:today).and_return static_future_date
    expect(user.birthday).to eq Date.new(2023,8,15)
  end
end