# Docs: https://docs.chef.io/config_rb_metadata.html
name             'rmit-combined'
maintainer       'Joel Scheuner'
maintainer_email 'joel.scheuner.dev@gmail.com'
source_url       'https://github.com/sealuzh/cwb-benchmarks'
issues_url       'https://github.com/sealuzh/cwb-benchmarks/issues'
license          'MIT'
description      'Installs/Configures `rmit-combined` for cwb'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.4'

# CWB
depends 'cwb', '~> 0.1.0'

# External
depends 'apt', '~> 6.0.1'
depends 'build-essential', '~> 8.0.0'

# Internal
depends 'stop-services', '~> 0.1.0'
