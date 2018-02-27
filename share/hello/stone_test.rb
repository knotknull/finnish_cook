## Lets try some comments
## This is an inspec test file to determin ~/stone.txt exists
## and has the correct contents.
##
describe file("#{ENV['HOME']}/stone.txt") do
  it { should be_file }
  its('content') { should match('Written to stone.txt') }
end
