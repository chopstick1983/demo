//
//  main.m
//  InstanceAndClass
//
//  Created by Victor on 11-8-1.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestClass.h"
int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    NSLog(@"Hello, World!");
    
    TestClass* cls = [[TestClass alloc] init];
    
    
    NSLog([cls getInstanceMethod:@"TestMethod" 
               withParamaterName:@"TestParameters"]);
    
    NSLog([TestClass getClassMethodReturnValue:@"returnValue"]);
    [pool drain];
    return 0;
}

