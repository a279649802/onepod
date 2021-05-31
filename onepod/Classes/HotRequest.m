//
//  HotRequest.m
//  TEST1
//
//  Created by runbey_ios on 2021/5/31.
//

#import "HotRequest.h"

@implementation HotRequest
{
  
}

- (id)initWithNull{
    if ([super init]) {
        
    }
    return self;
}

- (NSString *)requestUrl {
   return @"/wxarticle/chapters/json";
}

- (NSString *)baseUrl{
     // 可以全局配置
    return  @"https://wanandroid.com";
}


- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodGET;
}

- (id)requestArgument {

//return @{
//        @"username": _username,
//        @"password": _password
//    };
    return @{};

}
@end
