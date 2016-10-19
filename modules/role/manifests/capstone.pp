class role::capstone inherits role::base {
  include profile::blog
  include profile::proxy
  notify {"In Capstone Role":}
}
