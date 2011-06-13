//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Sumardi Shukor on 6/13/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculatorViewController : UIViewController {
    float total, currentNumber;
    int currentOperation;
    UITextField *result;
    UIButton *equalBtn, *clearBtn;
}

@property (nonatomic, retain) IBOutlet UITextField *result;
@property (nonatomic, retain) IBOutlet UIButton *equalBtn;
@property (nonatomic, retain) IBOutlet UIButton *clearBtn;
- (IBAction)btnNumberPressed:(id)sender;
- (IBAction)clearBtnPressed:(id)sender;
- (IBAction)btnOperatorPressed:(id)sender;
- (IBAction)equalBtnPressed:(id)sender;

@end
