default['cookbook_rubybox']['ruby']['use_rvm'] = true
default['cookbook_rubybox']['ruby']['versions'] = %w(2.1.2)
default['cookbook_rubybox']['ruby']['global_version'] = '2.1.2'

# Create an array of gems to install
default['cookbook_rubybox']['gems'] = []

default['build-essential']['compile_time'] = true