# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'watch-demo Extension' do
    # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
    use_frameworks!
    pod 'Kingfisher', :git => 'https://github.com/chdzq/Kingfisher.git', :branch => 'feature/modifyMD5'
    pod 'Alamofire',                '~> 4.5'

end

target 'ios-demo' do
    # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
    use_frameworks!
    pod 'Kingfisher', :git => 'https://github.com/chdzq/Kingfisher.git', :branch => 'feature/modifyMD5'
    pod 'Alamofire',                '~> 4.5'
end

target 'mac-demo' do
    # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
    use_frameworks!
    pod 'Kingfisher', :git => 'https://github.com/chdzq/Kingfisher.git', :branch => 'feature/modifyMD5'
    pod 'Alamofire',                '~> 4.5'
end

target 'tv-demo' do
    # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
    use_frameworks!
   pod 'Kingfisher', :git => 'https://github.com/chdzq/Kingfisher.git', :branch => 'feature/modifyMD5'
    pod 'Alamofire',                '~> 4.5'
end



post_install do |installer|
    generate_kingfisher_frameworks_script installer
end


def generate_kingfisher_frameworks_script (installer)
    shell_script = <<-SP
mkdir -p "${BUILT_PRODUCTS_DIR}/CommonCrypto"
cat <<EOF > "${BUILT_PRODUCTS_DIR}/CommonCrypto/module.modulemap"
module CCommonCrypto [system] {
    header "${SDKROOT}/usr/include/CommonCrypto/CommonCrypto.h"
    export *
}
EOF
    SP

    Pod::UI.puts "generate script for kingfisher frameworks"
    project = installer.pods_project
    installer.pods_project.targets.each do |target|
        if /^Kingfisher*?/.match("#{target.name}")
            phase = target.new_shell_script_build_phase("[KF]CommonCrypto")
            phase.shell_script = shell_script
            target.build_phases.unshift(phase).uniq! unless target.build_phases.first == phase
            project.save()
        end
    end
end
