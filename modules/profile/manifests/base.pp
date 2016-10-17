class profile::base {
  include 'review'
  notify { "Hello ${fqdn}": }
}
