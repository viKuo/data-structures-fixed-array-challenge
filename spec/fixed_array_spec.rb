require_relative '../fixed_array'

describe 'fixed_array class' do
  let(:array) { FixedArray.new(rand(50)) }
  it 'raises an error when index is out of bounds' do
    array.fill_array
    expect { array.get(array.size+3) }.to raise_error(RuntimeError)
  end
end
