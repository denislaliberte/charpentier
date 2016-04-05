require 'spec_helper'

RSpec.describe 'charpentier' , type: :aruba do
  before(:each) { run('jm') }
  it { expect(last_command_started).to be_successfully_executed }
end
