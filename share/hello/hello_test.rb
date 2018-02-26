describe file('hello.txt') do
  it { should be_file }
  its('content') { should match('Welcome to Finnish Cook') }
end
