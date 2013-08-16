require 'rspec'
require 'rcalc'

describe Rcalc do
  it 'computes an integer' do
    rcalc = Rcalc.new
    expect(rcalc.compute('1')).to eq 1
  end
end
