require 'spec_helper'

RSpec.describe Charpentier, type: :aruba do
  before(:each) { run('jm') }
  it { expect(last_command_started).to be_successfully_executed }
  it do
    expect(last_command_started)
      .to have_output an_output_string_matching '--help'
  end
end
