require 'spec_helper'

RSpec.describe Charpentier, type: :aruba do
  describe 'jm' do
    before(:each) { run('jm') }
    it { expect(last_command_started).to be_successfully_executed }
    it do
      expect(last_command_started)
        .to have_output an_output_string_matching 'Usage:'
    end
    it do
      expect(last_command_started)
        .to have_output an_output_string_matching '--help'
    end
  end
  describe 'jm --help' do
    before(:each) { run('jm --help') }
    it do
      help_message = '-h, --help .*Show command line help'
      expect(last_command_started)
        .to have_output an_output_string_matching help_message
    end
  end
end
