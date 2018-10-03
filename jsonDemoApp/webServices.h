//
//  webservices.h
//  jsonDemoApp
//
//  Created by TUSHAR BERI on 03/10/18.
//  Copyright © 2018 tired guardian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface webservices : NSObject
+(void)executequery:(NSString *)strurl strpremeter:(NSString *)premeter withblock:(void(^)(NSData *, NSError*))block;

@end


