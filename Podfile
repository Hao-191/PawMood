platform :ios, '13.0'

target 'PawMood' do
  use_frameworks!

  pod 'GoogleMaps'
  pod 'GooglePlaces'

  # Add Firebase pods
  pod 'Firebase/Core'
  pod 'Firebase/Auth'
  pod 'Firebase/Firestore'
  pod 'Firebase/Storage'
  pod 'Firebase/AppCheck'
end

# Optional: you can leave these or remove them
target 'PawMoodTests' do
  inherit! :search_paths
end

target 'PawMoodUITests' do
  inherit! :search_paths
end


post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
    end
  end
end
