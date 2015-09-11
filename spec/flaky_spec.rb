require 'spec_helper'

describe 'A Flaky Test' do
  it 'should be flaky' do
    file_exists = File.exist?('/tmp/flaky_spec.txt')
    FileUtils.touch('/tmp/flaky_spec.txt')
    Kernel.sleep(120)
    expect(file_exists).to be_truthy
  end
end
