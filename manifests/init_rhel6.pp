class cis::rhel::6 {

  # 1.1.1
  # 1.1.2
  # 1.1.3
  # 1.1.4
  # 1.1.5
  # 1.1.6
  # 1.1.7
  # 1.1.8
  # 1.1.9
  # 1.1.10
  # 1.1.14
  # 1.1.15
  # 1.1.16
  file {'/etc/fstab':
  	source  => "puppet:///modules/cis/etc/fstab",
  	owner   => root,
  	group   => root,
  	mode    => 0600
  	}

  # 1.1.17
  file {'/tmp':
  	mode => 1777
  	}

  # 1.2.2
  package {'gpg-pubkey':
  	ensure => installed
  	}

  # 1.2.3
  file {'/etc/yum.conf':
  	source  => "puppet:///modules/cis/etc/yum.conf",
  	}

  # 1.3.1
  package {'aide':
  	ensure => installed
  	}

  # 1.3.2
  cron { aide-check:
  	command => "/usr/sbin/aide --check",
  	user    => root,
  	hour    => 5,
  	minute  => 0
  }

  # 1.4.1
  # 5.2.3
  file{'/etc/default/grub':
  	source  => "puppet:///modules/cis/etc/default/grub",
  	}

  # 1.4.2
  # 1.4.3
  file {'/etc/selinux/config':
  	source  => "puppet:///modules/cis/etc/selinux/config",
  	}

  # 1.4.4
  package {'setroubleshoot':
  	ensure => absent
  	}

  # 1.4.5
  package {'mcstrans':
  	ensure => absent
  	}

  # 1.4.6 -- Not configurable via puppet

  # 1.5.1
  file {'/etc/grub.conf':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}

  # 1.5.3 -- Not configurable via puppet

  # 1.5.4
  # 1.5.5
  # 3.1
  file {'/etc/sysconfig/init':
  	source  => "puppet:///modules/cis/etc/sysconfig/init",
  	}

  # 1.6.1
  file {'/etc/security/limits.conf':
  	source  => "puppet:///modules/cis/etc/security/limits.conf",
  	}

  # 1.6.1
  # 1.6.2
  # 1.6.3
  # 4.1.1
  # 4.1.2
  # 4.2.1
  # 4.2.2
  # 4.2.3
  # 4.2.4
  # 4.2.5
  # 4.2.6
  # 4.2.7
  # 4.2.8
  file {'/etc/sysctl.conf':
  	source  => "puppet:///modules/cis/etc/sysctl.conf",
  	}
  	
  # 2.1.1
  package {'telnet-server':
  	ensure => absent
  	}

  # 2.1.2
  package {'telnet':
  	ensure => absent
  	}

  # 2.1.3
  package {'rsh-server':
  	ensure => absent
  	}

  # 2.1.4
  package {'rsh':
  	ensure => absent
  	}

  # 2.1.5
  package {'ypbind':
  	ensure => absent
  	}

  # 2.1.6
  package {'ypserv':
  	ensure => absent
  	}

  # 2.1.7
  package {'tftp':
  	ensure => absent
  	}

  # 2.1.8
  package {'tftp-server':
  	ensure => absent
  	}

  # 2.1.9
  package {'talk':
  	ensure => absent
  	}

  # 2.1.10
  package {'talk-server':
  	ensure => absent
  	}

  # 2.1.11
  package {'xinetd':
  	ensure => absent
  	}

  # 2.1.12
  package {'chargen-dgram':
  	ensure => absent
  	}

  # 2.1.13
  package {'chargen-stream':
  	ensure => absent
  	}

  # 2.1.14
  package {'daytime-dgram':
  	ensure => absent
  	}

  # 2.1.15
  package {'daytime-stream':
  	ensure => absent
  	}

  # 2.1.16
  package {'echo-dgram':
  	ensure => absent
  	}

  # 2.1.17
  package {'echo-stream':
  	ensure => absent
  	}

  # 2.1.18
  package {'tcpmux-server':
  	ensure => absent
  	}

  # 3.2
  package {'xorg-x11-libs':
  	ensure => absent
  	}

  # 3.3
  package {'avahi-daemon':
  	ensure => absent
  	}

  # 3.5
  package {'dhcp':
  	ensure => absent
  	}

  # 3.6
  package {'ntp':
  	ensure => installed
  	}
  file {'/etc/ntp.conf':
  	source  => "puppet:///modules/cis/etc/ntp.conf",
  	owner   => root,
  	group   => root,
  	mode    => 0640
  	}
  file {'/etc/sysconfig/ntpd':
  	source  => "puppet:///modules/cis/etc/sysconfig/ntpd",
  	owner   => root,
  	group   => root,
  	mode    => 0640
  	}

  # 3.16
  file {'/etc/postfix/main.cf':
  	source  => "puppet:///modules/cis/etc/postfix/main.cf",
  	owner   => root,
  	group   => root,
  	mode    => 0640
  	}

  # 4.5.3
  file {'/etc/hosts.allow':
  	owner => root,
  	group => root,
  	mode  => 0644
  	}

  # 4.5.5
  file {'/etc/hosts.deny':
  	owner => root,
  	group => root,
  	mode  => 0644
  	}	

  # 4.7
  package {'iptables':
  	ensure => installed
  	}
  service {'iptables':
  	enable => true
  	}

  # 5.1.1
  package {'rsyslog':
  	ensure => installed
  	}

  # 5.1.2
  service {'rsyslog':
  	enable => true
  	}

  # 5.1.4
  file {'/var/log/messages':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
  file {'/var/log/secure':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
  file {'/var/log/maillog':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
  file {'/var/log/cron':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
  file {'/var/log/spooler':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}
  file {'/var/log/boot.log':
  	owner => root,
  	group => root,
  	mode  => 0600
  	}

  # 5.1.5
  file {'/etc/rsyslog.conf':
  	source  => "puppet:///modules/cis/etc/rsyslog.conf",
  	}

  # 5.2.1.3
  file {'/etc/audit/auditd.conf':
  	source  => "puppet:///modules/cis/etc/audit/auditd.conf",
  	}

  # 5.2.2
  service {'auditd':
  	enable => true
  	}

  # 5.2.4
  # 5.2.5
  # 5.2.6
  # 5.2.7
  # 5.2.8
  # 5.2.9
  # 5.2.10
  # 5.2.11
  # 5.2.13
  # 5.2.14
  # 5.2.15
  # 5.2.16
  # 5.2.17
  # 5.2.18
  file {'/etc/audit/audit.rules':
  	source  => "puppet:///modules/cis/etc/audit/audit.rules",
  	}

  # 5.2.12 -- Not doable with Puppet

  # 6.1.1
  package {'cronie-anacron':
    ensure => installed,
  }

  # 6.1.2
  service {'crond':
    enable => true,
  }

  # 6.1.3
  file {'/etc/anacrontab':
    owner => root,
    group => root,
    mode  => 0600,
  }

  # 6.1.4
  file {'/etc/crontab':
    owner => root,
    group => root,
    mode  => 0600,
  }

  # 6.1.5
  file {'/etc/cron.hourly':
    owner => root,
    group => root,
    mode  => 0600,
  }

  # 6.1.6
  file {'/etc/cron.daily':
    owner => root,
    group => root,
    mode  => 0600,
  }

  # 6.1.7
  file {'/etc/cron.weekly':
    owner => root,
    group => root,
    mode  => 0600,
  }

  # 6.1.8
  file {'/etc/cron.monthly':
    owner => root,
    group => root,
    mode  => 0600,
  }

# 6.1.9
  file {'/etc/cron.d':
    owner => root,
    group => root,
    mode  => 0700,
  }

# 6.1.10
# 6.1.11
  file {'/etc/at.deny':
    ensure  => absent,
  }
  file {'/etc/at.allow':
    source  => "puppet:///modules/cis/etc/at.allow",
    owner   => root,
    group   => root,
    mode    => 0600,
  }
  file {'/etc/cron.allow':
    source  => "puppet:///modules/cis/etc/cron.allow",
    owner   => root,
    group   => root,
    mode    => 0600,
  }

  # 6.2.1
  # 6.2.2
  # 6.2.3
  # 6.2.4
  # 6.2.5
  # 6.2.6
  # 6.2.7
  # 6.2.8
  # 6.2.9
  # 6.2.10
  # 6.2.11
  # 6.2.12
  # 6.2.13, requires editing of sshd_config with
  # environment-specific deny/allow list of users.
  # 6.2.14
  file {'/etc/ssh/sshd_config':
    source  => "puppet:///modules/cis/etc/ssh/sshd_config",
    owner   => root,
    group   => root,
    mode    => 0600,
  }

  # 6.3.1
  file {'/etc/sysconfig/authconfig':
    source  => "puppet:///modules/cis/etc/sysconfig/authconfig",
    owner   => root,
    group   => root,
    mode    => 0644,
  }

  # 6.3.2
  file {'/etc/pam.d/system-auth':
    ensure  => link,
    target  => '/etc/pam.d/system-auth-ac',
  }
  file {'/etc/pam.d/system-auth-ac':
    source  => "puppet:///modules/cis/etc/pam.d/system-auth-ac",
    owner   => root,
    group   => root,
    mode    => 0644,
  }
}
