class profile::base {
#  notify { "Hello ${fqdn}": }
  $message = hiera('message')
  notify { $message: }
#  include hosts
}
