require 'user'

describe User do
  describe '.age' do
    it 'returns age for a birthday that has passed this year' do
      ralph = User.new('Ralph', Date.new(1986, 1, 1))
      expect(ralph.age).to eq 34
    end
  end
  it 'returns age for a birthday today' do
    john = User.new('John', Date.new(1988, Date.today.month, Date.today.day))
    expect(john.age).to eq 32
  end
end
