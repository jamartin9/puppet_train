require 'spec_helper'
describe 'mysql' do
  context 'with default values for all parameters' do
    it { should contain_class('mysql') }
  end
end
