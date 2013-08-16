require 'rspec'
require 'rcalc'

describe Rcalc do
  it 'computes an integer' do
    rcalc = Rcalc.new
    expect(rcalc.compute('1')).to eq 1
  end

  it 'computes addition' do
    rcalc = Rcalc.new
    answer = rcalc.compute '1 + 1'
    expect(answer).to eq 2
  end

  it 'computes subtraction of integers' do
    rcalc = Rcalc.new
    answer = rcalc.compute '2 - 1'
    expect(answer).to eq 1
  end
end
