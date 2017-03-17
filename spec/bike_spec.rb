require './lib/bike.rb'

describe Bike do
it 'should respond_to "working?" function.' do
  expect(subject).to respond_to :working?
end

it '#working? should return false when status is broken' do
  subject.report_broken
  expect(subject.working?).to eq false
end

describe "#report_broken"
  it "should respond_to report_broken funtion" do
    expect(subject).to respond_to :report_broken
  end

  it "to change the status of bike from working to broken" do
    subject.report_broken
    expect(subject.status).to eq false
  end

  #it { is_expected.to respond_to :working? }
end
