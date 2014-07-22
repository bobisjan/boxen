require 'spec_helper'

describe 'cocoapods' do
  it do
    should contain_ruby__gem('cocoapods').with({
      :gem => 'cocoapods'
    })
  end

  it { should include_class('ruby::global') }
end