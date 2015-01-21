
class people::bobisjan {
    include osx::global::disable_remote_control_ir_receiver
    include osx::finder::show_all_on_desktop
    include osx::finder::unhide_library

    include atom
    include chrome
    # include cocoapods
    include docker
    include git
    include github_for_mac
    include heroku
    include induction
    include java
    include phantomjs
    include pycharm
    # include postgresapp
    include skype
    include testflight
    include virtualbox

    git::config::global { 'user.email': value  => 'me@bobisjan.com' }
    git::config::global { 'user.name': value  => 'Jan Bobisud' }

    package { 'bash-completion': ensure => present }

    # set the global ruby version
    $ruby_version = '2.1.2'
    class { 'ruby::global': version => $ruby_version }

    ruby_gem { "compass for ${ruby_version}":
      gem => 'compass',
      version => '~> 1.0',
      ruby_version => $ruby_version,
    }

    # set the global nodejs version
    $node_version = 'v0.10'
    class { 'nodejs::global': version => $node_version }

    nodejs::module { 'bower': node_version => $node_version }
    nodejs::module { 'watchman': node_version => $node_version }
    nodejs::module { 'ember-cli': node_version => $node_version }
    nodejs::module { 'grunt': node_version => $node_version }
    nodejs::module { 'grunt-cli': node_version => $node_version }

    # set the global phantomjs version
    phantomjs::global { '1.9.0': }

    $home = "/Users/${::boxen_user}"
}
