## chef recipe to uninstall a file to $HOME/stone.txt
## NOTE: notice the action, this is explicit overriding the
## implicit default create
##
file "#{ENV['HOME']}/stone.txt" do
  action :delete
end
