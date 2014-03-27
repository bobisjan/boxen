
class people::bobisjan {
    include osx::global::disable_remote_control_ir_receiver
    include osx::finder::show_all_on_desktop
    include osx::finder::unhide_library

    include git

    include heroku

    include github_for_mac

    include cocoapods
    include testflight
    include dropbox
    include skype

    $home = "/Users/${::boxen_user}"
    
    git::config::global {'user.email':
      value  => 'me@bobisjan.com'
    }
    
    git::config::global {'user.name':
      value  => 'Jan Bobisud'
    }
}
