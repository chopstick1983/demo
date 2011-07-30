//
//  CalculatorViewBaseViewController.m
//  CalculatorViewBase
//
//  Created by Victor on 11-7-30.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "CalculatorViewBaseViewController.h"

@implementation CalculatorViewBaseViewController

- (CalculatorBrain *)brain
{
    if (!brain)
    {
        brain = [[CalculatorBrain alloc] init];
        
    }
    return brain;
}

- (IBAction)digitPressed:(UIButton *)sender
{
    NSString *digit = [[sender titleLabel] text];
    if (userIsInTheMiddleOfTypingANumber)
    {
        [display setText:[[display text] stringByAppendingString:digit]];
    }
    else
    {
        [display setText:digit];
        userIsInTheMiddleOfTypingANumber = YES;
    }
    
}
- (IBAction)operatorPressed:(UIButton *)sender
{
    if (userIsInTheMiddleOfTypingANumber)
    {
        [[self brain] setOperand:[[display text] doubleValue]];
        
        userIsInTheMiddleOfTypingANumber = NO;
        
    }
    NSString *operation = [[sender titleLabel] text];
    double result = [[self brain] performOperation:operation];
    [display setText:[NSString stringWithFormat:@"%g", result]];
}

/*
- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
*/
/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

/*
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/
@end
