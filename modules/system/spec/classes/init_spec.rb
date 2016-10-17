require 'spec_helper'
describe 'system' do
  context 'with default values for all parameters' do
    it { should contain_class('system') }
  end
end
