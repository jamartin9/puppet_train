class profile::base {
#  notify { "Hello ${fqdn}": }
  $message = hiera('message')
  notify { $message: }
  notify { "IN BASE ROLE": }
#  include hosts
}
