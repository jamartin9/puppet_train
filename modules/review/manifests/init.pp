# Class: review
# ===========================
#
# Full description of class review here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'review':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class review(String $user = 'review') {
      file{'/etc/shells':
  ensure        => 'file',
        content => 'puppet:///modules/review/shells',
      owner     => 'root',
      mode      => '0755',
      group     => 'root',
      }
      ->
     file{'/etc/motd':
  ensure  => 'file',
  content => epp('review/motd.epp'),
  owner   => 'root',
  group   => 'root',
  mode    => '0755',
  }
  ->
     user{'review':
          ensure => 'present',
       shell => '/bin/bash',
      managehome => true,
      }

}
