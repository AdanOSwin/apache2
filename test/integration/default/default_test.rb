# InSpec test for recipe apache::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

describe port(80) do
 it { should be_installed }
end

describe file('/var/www/html/index.html') do
 if {should exist}
 its('content') {should match(/Hello Pipeline World!/)}
end

describe upstart_service('apache2') do
 it {should be_enabled}
 it {should be_running}
end

