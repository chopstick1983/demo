//
//  CalculatorBrain.h
//  CalculatorViewBase
//
//  Created by Victor on 11-7-30.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CalculatorBrain : NSObject {
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
}

- (void)setOperand:(double)anOperand;
- (double)performOperation:(NSString *)operation;

@end
