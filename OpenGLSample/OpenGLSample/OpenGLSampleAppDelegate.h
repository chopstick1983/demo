//
//  OpenGLSampleAppDelegate.h
//  OpenGLSample
//
//  Created by Victor on 11-8-4.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OpenGLSampleViewController;

@interface OpenGLSampleAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet OpenGLSampleViewController *viewController;

@end
