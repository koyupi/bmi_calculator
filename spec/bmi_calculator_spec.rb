require 'spec_helper'

describe BmiCalculator do
  it 'has a version number' do
    expect(BmiCalculator::VERSION).not_to be nil
  end

  it 'calc height(m)' do
    bmi = BmiCalculator.calc_m(1.7, 70)
    expect(bmi).to eq 24.2
  end

  it 'calc height(cm)' do
    bmi = BmiCalculator.calc_cm(175, 70)
    expect(bmi).to eq 22.9
  end

  it 'calc yard-pounds' do
    bmi = BmiCalculator.calc_yp(5, 7, 150)
    expect(bmi).to eq 23.5
  end
end