name             'cookbook_rubybox'
description      'A ruby vagrant box, without applications and rack server.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.7'

supports 'ubuntu'

%w{build-essential rbenv ruby_build}.each do |cb|
  depends cb
end