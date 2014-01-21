name             'cookbook_rubybox'
description      'A ruby vagrant box, without applications and rack server.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

supports 'ubuntu'

depends 'rbenv'
