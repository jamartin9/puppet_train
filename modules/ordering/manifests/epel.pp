class ordering::epel {
yumrepo { 'epel':
	enabled => 1,
}

Yumrepo['epel'] -> Package <||>

}