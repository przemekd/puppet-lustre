require 'spec_helper'
describe 'lustre' do

  context 'with defaults for all parameters' do
    it { should contain_class('lustre') }
  end
end
