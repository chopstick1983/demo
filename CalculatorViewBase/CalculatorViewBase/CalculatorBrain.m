//
//  CalculatorBrain.m
//  CalculatorViewBase
//
//  Created by Victor on 11-7-30.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"


@implementation CalculatorBrain
- (void)performWaitingOpertion
{
    if([@"+" isEqualToString:waitingOperation])
    {
        operand = waitingOperand + operand;
    }
    else if([@"-" isEqualToString:waitingOperation])
    {
        operand = waitingOperand - operand;
    }
    else if([@"*" isEqualToString:waitingOperation])
    {
        operand = waitingOperand * operand;
    }
    else if([@"/" isEqualToString:waitingOperation])
    {
        operand = waitingOperand / operand;
    }
}

- (void)setOperand:(double)anOperand
{
    operand = anOperand;
}
- (double)performOperation:(NSString *)operation
{
    if ([operation isEqualToString:@"sqrt"])
    {
        operand = sqrt(operand);
    }
    else
    {
        [self performWaitingOpertion];
        waitingOperand = operand;
        waitingOperation = operation;
                                     
    }
    return operand;
}
@end
