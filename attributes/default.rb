default['loggly']['tags'] = []

default['loggly']['log_files'] = []
default['loggly']['log_dirs'] = []

default['loggly']['tls']['enabled'] = true
default['loggly']['tls']['cert_path'] = '/etc/rsyslog.d/keys/ca.d'
default['loggly']['tls']['cert_url'] = 'https://logdog.loggly.com/media/loggly.com.crt'
default['loggly']['tls']['cert_checksum'] = '69559ef5e65be40abf939cc2ecb7380df3c6a7fa86386f02a1be395cad6afa6d'
default['loggly']['tls']['intermediate_cert_url'] = 'https://certs.starfieldtech.com/repository/sf_bundle.crt'
default['loggly']['tls']['intermediate_cert_checksum'] = '6b887aeab82bd02a0033635718e2f4079e724754927e247b43b20cbee0c27885'

default['loggly']['token']['from_databag'] = true
default['loggly']['token']['databag'] = 'loggly'
default['loggly']['token']['databag_item'] = 'token'
default['loggly']['token']['value'] = '' # Will be set from Data Bag above by default

default['loggly']['rsyslog']['conf'] = '/etc/rsyslog.d/10-loggly.conf'

default['loggly']['rsyslog']['host'] = 'logs-01.loggly.com'
default['loggly']['rsyslog']['port'] = node['loggly']['tls']['enabled'] ? 6514 : 514

default['loggly']['rsyslog']['input_file_poll_interval'] = 10
