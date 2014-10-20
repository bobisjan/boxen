
class people::bobisjan {
    include osx::global::disable_remote_control_ir_receiver
    include osx::finder::show_all_on_desktop
    include osx::finder::unhide_library

    include atom
    include chrome
    # include cocoapods
    include git
    include github_for_mac
    include heroku
    include induction
    include phantomjs
    include postgresapp
    include skype
    include testflight

    git::config::global { 'user.email': value  => 'me@bobisjan.com' }
    git::config::global { 'user.name': value  => 'Jan Bobisud' }

    package { 'bash-completion': ensure => present }

    # set the global nodejs version
    class { 'nodejs::global': version => 'v0.10' }

    nodejs::module { 'ember-cli': node_version => 'v0.10' }
    nodejs::module { 'bower': node_version => 'v0.10' }

    phantomjs::global { '1.9.0': }

    $home = "/Users/${::boxen_user}"
}
