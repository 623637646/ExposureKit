//
//  ExposureKitConfig.h
//  ExposureKit
//
//  Created by Wang Ya on 31/10/18.
//  Copyright © 2018 Shopee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExposureKitMacro.h"

NS_ASSUME_NONNULL_BEGIN

extern NSString *const ExposureKitConfigNotificationIntervalChanged;

@interface ExposureKitConfig : NSObject
MACRO_SINGLETON_PATTERN_H

// The detect interval, default is 0.2s
@property (nonatomic, assign) NSTimeInterval interval;

@end

NS_ASSUME_NONNULL_END
