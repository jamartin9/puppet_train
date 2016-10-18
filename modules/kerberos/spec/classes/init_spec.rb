require 'spec_helper'
describe 'kerberos' do
  context 'with default values for all parameters' do
    it { should contain_class('kerberos') }
  end
end
