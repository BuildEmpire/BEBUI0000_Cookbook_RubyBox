default['cookbook_rubybox']['ruby']['use_rvm'] = true
default['cookbook_rubybox']['ruby']['versions'] = %w(1.9.3-p429)
default['cookbook_rubybox']['ruby']['global_version'] = '1.9.3-p429'

# Create an array of gems to install
default['cookbook_rubybox']['gems'] = []

default['build-essential']['compile_time'] = true