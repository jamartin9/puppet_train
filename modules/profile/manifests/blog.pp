class profile::blog inherits profile::base {
  include blog
  notify { "IN BLOG PROFILE": }
}
