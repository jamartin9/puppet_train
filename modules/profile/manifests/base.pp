class profile::base {
  notify { "Hello ${fqdn}": }
  include hosts
}
