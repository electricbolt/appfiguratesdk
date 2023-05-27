Pod::Spec.new do |s|
  s.name         = "AppfigurateLibrary"
  s.version      = "3.1.0"
  s.summary      = "Appfigurate is a platform that allows you to change local configuration properties in iOS, watchOS and mobile Flutter apps and app extensions, securely, at runtime."
  s.description  = "This cocoapod only adds the client library to your app, you will also need to install the Appfigurate app into your iOS Simulator. Follow the Getting Started guide located at https://docs.electricbolt.co.nz/getting-started/getting-started"
  s.homepage     = "https://docs.electricbolt.co.nz"
  s.license	     = {
      :type => 'Copyright',
      :text => <<-LICENCETEXT
Appfigurate™ License Agreement.

The license agreement for Appfigurate is located at https://docs.electricbolt.co.nz/legal/license-agreement
      LICENCETEXT
  }

  s.author                     = { 'Electric Bolt Limited' => 'support@electricbolt.co.nz' }
  s.source                     = { :git => "https://github.com/electricbolt/appfiguratesdk.git", :tag => '3.1.0' }
  s.ios.deployment_target      = '13.0'
  s.watchos.deployment_target  = '5.0'
  s.vendored_frameworks        = 'AppfigurateLibrary.xcframework'
  
end
