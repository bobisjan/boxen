
class people::bobisjan {
    include osx::global::disable_remote_control_ir_receiver
    include osx::finder::show_all_on_desktop
    include osx::finder::unhide_library

    include chrome
    include cocoapods
    include dropbox
    include git
    include github_for_mac
    include heroku
    include induction
    include java
    include postgresapp
    include skype
    include testflight

    class { 'intellij':
      edition => 'ultimate',
      version => '13.1.2'
    }

    git::config::global { 'user.email': value  => 'me@bobisjan.com' }
    git::config::global { 'user.name': value  => 'Jan Bobisud' }

    nodejs::module { 'ember-cli': node_version => 'v0.10' }
    nodejs::module { 'bower': node_version => 'v0.10' }

    $home = "/Users/${::boxen_user}"
}
