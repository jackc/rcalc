require 'rspec'
require 'rcalc'

describe Rcalc do
  let(:rcalc) { Rcalc.new }

  it 'computes an integer' do
    expect(rcalc.compute('1')).to eq 1
  end

  it 'computes addition of integers' do
    answer = rcalc.compute '1 + 1'
    expect(answer).to eq 2
  end

  it 'computes subtraction of integers' do
    answer = rcalc.compute '2 - 1'
    expect(answer).to eq 1
  end

  it 'computes multiplication of integers' do
    answer = rcalc.compute '3 * 4'
    expect(answer).to eq 12
  end
end
