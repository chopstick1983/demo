//
//  TestClass.h
//  InstanceAndClass
//
//  Created by Victor on 11-8-1.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface TestClass : NSObject {
    
}

- (NSString *) getInstanceMethod:(NSString *)method withParamaterName: (NSString *)parameterName;
+ (NSString *) getClassMethodReturnValue:(NSString *)returnValue;
 
@end
