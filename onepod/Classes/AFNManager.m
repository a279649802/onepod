//
//  AFNManager.m
//  TEST1
//
//  Created by runbey_ios on 2021/5/31.
//

#import "AFNManager.h"
#import "AFNetworking.h"


@interface AFNManager()
{
}
@end
static AFNManager *manager = nil;

@implementation AFNManager

+(AFNManager *)sharedManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (manager == nil) {
            manager = [[self alloc] init];
        }
    });
    return manager;
}

- (void)GET:(NSString *)URLString parameters:(id)parameters succeed:(void (^)(id data))succeed failure:(void (^)(NSError *error))failure{
    // 创建请求管理者
    
    
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    
    
    [mgr GET:URLString parameters:parameters headers:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        succeed(responseObject);
        
     } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
         failure(error);
     }];

    
}

@end
