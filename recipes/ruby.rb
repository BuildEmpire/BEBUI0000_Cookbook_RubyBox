#
# Cookbook Name:: cookbook_rubybox
# Recipe:: ruby
#
# Install and setup Ruby environment
#

if node['cookbook_rubybox']['ruby']['use_rvm'] == false

  include_recipe "ruby_build::default"
  ruby_build_ruby node['cookbook_rubybox']['ruby']['global_version'] do
    action :install
  end

  # Install the gems required
  Array(node['cookbook_rubybox']['gems']).each_with_index do |package_name, index|
    gem_package package_name do
      action :install
    end
  end

else

  include_recipe "rbenv::default"
  include_recipe "rbenv::ruby_build"

  node['cookbook_rubybox']['ruby']['versions'].each do |rb_version|

    rbenv_ruby rb_version do
      global(node['cookbook_rubybox']['ruby']['global_version'] == rb_version)
    end
    rbenv_gem 'bundler' do
      ruby_version rb_version
    end

    # Install the gems required
    Array(node['cookbook_rubybox']['gems']).each_with_index do |package_name, index|
      rbenv_gem package_name do
        ruby_version rb_version
      end
    end

  end

end
