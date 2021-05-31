//
//  AFNManager.h
//  TEST1
//
//  Created by runbey_ios on 2021/5/31.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFNManager : NSObject
- (void)GET:(NSString *)URLString parameters:(id)parameters succeed:(void (^)(id data))succeed failure:(void (^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
