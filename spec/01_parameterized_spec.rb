RSpec.context 'parameterized spec' do
  after :each do
    Timecop.return
  end

  subject { Time.now }

  where(:time) do
    Timecop.freeze

    [
      [Time.now],
    ]
  end

  with_them do
    it { expect(subject).to eq(time) }
  end
end
