#
# Be sure to run `pod lib lint AnalysysSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
      s.name             = 'AnalysysAgent'
      s.version          = '4.5.21.3'
      s.summary          = 'This is the official iOS SDK for Analysys.'
      s.homepage         = 'https://github.com/AnalysysSDK/Analysys_SDK_iOS.git'
      s.author           = { 'analysys' => 'analysysSDK@analysys.com.cn' }
      s.source           = { :git => 'https://github.com/analysys/ana-ios-sdk.git', :tag => s.version.to_s }
      s.ios.deployment_target = '9.0'
      
      s.frameworks   = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'AdSupport', 'WebKit'
      s.libraries    = 'z', 'sqlite3', 'icucore'
      
      # 基础模块
      s.subspec 'Agent' do |agent|
        agent.source_files = 'AnalysysSDK_SourceCode/Classes/AnalysysAgent/**/*'
        agent.resource = 'AnalysysSDK_SourceCode/Assets/AnalysysAgent.bundle'
        agent.public_header_files = 'AnalysysSDK_SourceCode/Classes/AnalysysAgent/{AnalysysAgent.h,ANSConst.h,AnalysysAgentConfig.h,ANSSecurityPolicy.h}'
      end

      # 加密模块
      s.subspec 'Encrypt' do |encrypt|
        encrypt.source_files = 'AnalysysSDK_SourceCode/Classes/AnalysysEncrypt/**/*'
        encrypt.public_header_files = 'AnalysysSDK_SourceCode/Classes/AnalysysEncrypt/ANSDataEncrypt.h'
        encrypt.dependency 'AnalysysAgent/Agent'
      end
      
      # 推送模块
      s.subspec 'Push' do |push|
        push.source_files = 'AnalysysSDK_SourceCode/Classes/AnalysysPush/**/*'
        push.public_header_files = 'AnalysysSDK_SourceCode/Classes/AnalysysPush/AnalysysPush.h'
        push.dependency 'AnalysysAgent/Agent'
      end
      
      # 可视化模块
      s.subspec 'Visual' do |visual|
        visual.source_files = 'AnalysysSDK_SourceCode/Classes/AnalysysVisual/**/*'
        visual.public_header_files = 'AnalysysSDK_SourceCode/Classes/AnalysysVisual/AnalysysVisual.h'
        visual.dependency 'AnalysysAgent/Agent'
      end
      
      # s.default_subspec = 'Agent'
  
end
