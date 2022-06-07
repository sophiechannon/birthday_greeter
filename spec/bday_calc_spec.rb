require 'bday_calc'

describe BdayCalc do
  subject(:calc) { described_class.new(user) }
  let(:user) {double :user, name: "Sophie", birthday: Date.new(2022,8,15)}

  it "constructs" do
    expect(calc.user).to eq user
  end

  it "returns today if its the birthday" do
    allow(Date).to receive(:today).and_return Date.new(2022,8,15)
    expect(calc.result).to eq :today
  end

  it "returns future if bday in the past" do
    allow(Date).to receive(:today).and_return static_future_date
    expect(calc.result).to eq :future
  end

  it "works out how many days in the future" do
    allow(Date).to receive(:today).and_return static_past_date
    expect(calc.days_to_go).to eq 70
  end
end