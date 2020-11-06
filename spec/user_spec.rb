require 'user'

describe User do
  describe '.age' do
    it 'returns age for a birthday that has passed this year' do
      ralph = User.new('Ralph', Date.new(1986, 1, 1))
      expect(ralph.age).to eq 34
    end
    it 'returns age for a birthday today' do
      john = User.new('John', Date.new(1988, Date.today.month, Date.today.day))
      expect(john.age).to eq 32
    end
    it 'returns age for a birthday still to come this year' do
      paul = User.new('Paul', Date.new(1990, 12, 30))
      expect(paul.age).to eq 29
    end
  end

  describe '.birthday_this_year' do
    it 'returns date of birthday this year' do
      ralph = User.new('Ralph', Date.new(1986, 1, 1))
      expect(ralph.birthday_this_year).to eq Date.new(2020, 1, 1)
    end
  end

  describe '.next_birthday' do
    it 'returns date for a birthday that has passed this year' do
      ralph = User.new('Ralph', Date.new(1986, 1, 1))
      expect(ralph.next_birthday).to eq Date.new(2021, 1, 1)
    end
    it 'returns date for a birthday of today' do
      george = User.new('George', Date.new(1988, Date.today.month, Date.today.day))
      expect(george.next_birthday).to eq Date.new(2021, Date.today.month, Date.today.day)
    end
  end
end
