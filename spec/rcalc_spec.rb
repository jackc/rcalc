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

  it 'computes division of integers' do
    answer = rcalc.compute '20 / 4'
    expect(answer).to eq 5
  end

  it 'raises error on unexpected operand' do
    expect{rcalc.compute '1 abc 2'}.to raise_error(ArgumentError)
  end

  it 'computes when expression has no spaces between tokens' do
    answer = rcalc.compute '1+1'
    expect(answer).to eq 2
  end

  it 'computes with order of operations' do
    answer = rcalc.compute '1 + 1 * 2'
    expect(answer).to eq 3
  end

  it 'raises error on evil input' do
    expect{rcalc.compute 'exit 1'}.to raise_error(ArgumentError)
  end

  it 'computes order of operations with parenthesis' do
    answer = rcalc.compute '(1 + 1) * 2'
    expect(answer).to eq 4
  end
end
