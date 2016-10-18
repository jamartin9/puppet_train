require 'spec_helper'
describe 'files' do
  context 'with default values for all parameters' do
    it { should contain_class('files') }
  end
end
