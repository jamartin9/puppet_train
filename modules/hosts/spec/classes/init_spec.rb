require 'spec_helper'
describe 'hosts' do
  context 'with default values for all parameters' do
    it { should contain_class('hosts') }
  end
end
