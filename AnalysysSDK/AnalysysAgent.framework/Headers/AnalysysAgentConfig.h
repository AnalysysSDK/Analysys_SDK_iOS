//
//  AnalysysAgentConfig.h
//  AnalysysAgent
//
//  Created by 向作为 on 2019/6/24.
//  Copyright © 2019 shaochong du. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ANSConst.h"

#define AnalysysConfig [AnalysysAgentConfig shareInstance]


/**
 * @class
 * AnalysysAgentConfig
 *
 * @abstract
 * 初始化SDK时所需要的配置信息
 *
 * @discussion
 * 在使用SDK时，使用此类将SDK需要的配置进行设置
 */
@interface AnalysysAgentConfig : NSObject


/**
 获取 AnalysysConfig 对象
 
 @return AnalysysConfig 实例
 */
+ (instancetype)shareInstance;

/**
 易观分配唯一标识
 */
@property (nonatomic, copy) NSString *appKey;

/**
 App发布的渠道标识，默认："App Store"
 */
@property (nonatomic, copy) NSString *channel;

/**
 统一域名：包含数据上传和可视化
 
 只需填写域名或IP部分。
 协议：数据上传及可视化数据配置地址默认 HTTPS 协议。
 如：arkpaastest.analysys.cn
 */
@property (nonatomic, copy) NSString *baseUrl;

/**
 是否追踪新用户的首次属性
 
 默认为 YES
 */
@property (nonatomic, assign) BOOL autoProfile;

/**
 是否允许渠道追踪
 
 默认为 NO
 */
@property (nonatomic, assign) BOOL autoInstallation;

/**
 数据上传加密类型
 */
@property (nonatomic, assign) AnalysysEncryptType encryptType;


@end


