# class postfix
#
class postfix($mail_domain = hiera('postfix::mail_domain')) {
  package { 'postfix':
    ensure => installed,
  }

  file { '/etc/postfix/main.cf':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('postfix/main.cf.erb'),
    notify  => Service['postfix'],
    require => Package['postfix'],
  }

  file { '/etc/mailname':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('postfix/mailname.erb'),
    notify  => Service['postfix'],
    require => Package['postfix'],
  }

  service{ 'postfix':
    ensure  => running,
    enable  => true,
    require => Package['postfix'],
  }
}
