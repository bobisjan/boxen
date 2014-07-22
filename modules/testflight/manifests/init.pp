class testflight {
  package { 'testflight':
    source   => 'https://d193ln56du8muy.cloudfront.net/desktop_app/1348796279/TestFlight-Desktop-1.0-Beta(296).zip',
    provider => 'compressed_app'
  }
}
