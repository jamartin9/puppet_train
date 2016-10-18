Facter.add("default_realm") do
  setcode "/bin/awk '/default_realm/{print $NF}' /etc/krb5.conf"
end
