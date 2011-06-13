//
//  CalculatorAppDelegate.h
//  Calculator
//
//  Created by Sumardi Shukor on 6/13/11.
//  Copyright 2011 Software Machine Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CalculatorViewController;

@interface CalculatorAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CalculatorViewController *viewController;

@end
