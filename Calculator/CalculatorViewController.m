//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Sumardi Shukor on 6/13/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

@synthesize result;
@synthesize equalBtn, clearBtn;

- (void)dealloc
{
    [result release]; result = nil;
    [clearBtn release]; clearBtn = nil;
    [equalBtn release]; equalBtn = nil;
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - IBAction

- (IBAction)btnNumberPressed:(id)sender 
{
    currentNumber = currentNumber * 10 + (float)[sender tag];
    [result setText:[NSString stringWithFormat:@"%.0f", currentNumber]];
}

- (IBAction)clearBtnPressed:(id)sender 
{
    currentNumber = 0.00;
    [result setText:@""];
}

- (IBAction)btnOperatorPressed:(id)sender 
{
    total = [[result text] floatValue];
    currentNumber = 0.00;
    currentOperation = (int)[sender tag];
    [result setText:@""];
}

- (IBAction)equalBtnPressed:(id)sender 
{
    switch (currentOperation) {
        case 1:
            total = total + currentNumber;
            break;
        case 2:
            total = total - currentNumber;
            break;
        case 3:
            total = total * currentNumber;
            break;
        case 4:
            total = total / currentNumber;
            break; 
        default:
            break;
    }
    [result setText:[NSString stringWithFormat:@"%.2f", total]];
}

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

@end
