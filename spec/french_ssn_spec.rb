require_relative '../french_ssn.rb'
describe '#french_ssn_info' do
  it 'returns an error message when given an incorrect number' do
    result = french_ssn_info('123')
    expect(result).to eq('The number is invalid')
  end
  it 'returns a correct message for a correct number' do
    result = french_ssn_info('1 84 12 76 451 089 46')
    expect(result).to eq('a male, born in December, 1984 in Seine-Maritime.')
  end
end
