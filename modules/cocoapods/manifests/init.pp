# Installs cocoapods
#     Use: "include cocoapods"
class cocoapods {
  require ruby::global

  ruby::gem { 'cocoapods':
    gem  => 'cocoapods',
    ruby => $::ruby::global::version,
  }
}
