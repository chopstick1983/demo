//
//  TestClass.m
//  InstanceAndClass
//
//  Created by Victor on 11-8-1.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "TestClass.h"


@implementation TestClass


- (NSString *) getInstanceMethod:(NSString *)method withParamaterName: (NSString *)parameterName
{
    return [method stringByAppendingString:parameterName];
    
}

+ (NSString *) getClassMethodReturnValue:(NSString *)returnValue
{
    return returnValue;
}
@end
