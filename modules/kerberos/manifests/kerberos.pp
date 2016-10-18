class kerberos::kerberos {

augueas { 'export default_realm':
	conext => '/files/etc/krb5.conf/libdefaults',
	changes => 'set default_realm PUPPETLABS.VM',
}

}