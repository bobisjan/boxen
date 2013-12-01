
class people::bobisjan {
    include osx::global::disable_remote_control_ir_receiver
    include osx::finder::show_all_on_desktop
    include osx::finder::unhide_library

    include github_for_mac

    include dropbox
#    include skype

    $home = "/Users/${::boxen_user}"

}
