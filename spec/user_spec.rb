require 'user'

describe User do
  describe '.age' do
    it 'returns age for a birthday that has passed this year' do
      ralph = User.new('Ralph', Date.new(1986, 1, 1))
      expect(ralph.age).to eq 34
    end
  end
end
