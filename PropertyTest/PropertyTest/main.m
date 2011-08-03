//
//  main.m
//  PropertyTest
//
//  Created by Victor on 11-8-3.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PropertyTestClass.h"

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    // insert code here...
    PropertyTestClass *cls = [[PropertyTestClass alloc] init];
    
    [cls setEye:123];
    
    NSLog(@"Hello, World!");
    NSLog([NSString stringWithFormat:@"%d", [cls eye]]);
    
    
    
    [pool drain];
    return 0;
}

