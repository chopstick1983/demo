//
//  CalculatorViewBaseViewController.h
//  CalculatorViewBase
//
//  Created by Victor on 11-7-30.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"         

@interface CalculatorViewBaseViewController : UIViewController {
    IBOutlet UILabel *display;
    CalculatorBrain *brain;
    BOOL userIsInTheMiddleOfTypingANumber;
}

- (IBAction)digitPressed:(UIButton *)sender;
- (IBAction)operatorPressed:(UIButton *)sender;

@end
