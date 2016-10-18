class hosts::hosts{

@@host { 'jam.puppetlabs.vm':
  ensure       => 'present',
  host_aliases => ['jam'],
  ip           => '192.168.5.39',
  target       => '/etc/hosts',
  tag          => 'classroom',
}
Host <<| tag=='classroom'  |>>

}
