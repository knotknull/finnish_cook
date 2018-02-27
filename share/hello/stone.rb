## chef recipe to write a file to $HOME/stone.txt
## NOTE: take notice of #{ENV['HOME']}. get env var $HOME
##
file "#{ENV['HOME']}/stone.txt" do
  content 'Written to stone.txt'
end
