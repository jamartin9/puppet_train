require 'spec_helper'
describe 'review' do
  context 'with default values for all parameters' do
    it { should contain_class('review') }
  end
end
