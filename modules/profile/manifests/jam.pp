class profile::jam inherits profile::base {
#  notify { "Hello ${fqdn}": }
  $message = hiera('message')
  notify { $message: }
  notify { "IN JAM PROFILE": }
#  include hosts
}
