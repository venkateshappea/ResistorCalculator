//
//  ResistanceValViewController.h
//  Resistor Calculator
//
//  Created by Venkatesh Appea on 2015-04-19.
//  Copyright (c) 2015 Venkatesh Appea. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResistanceValViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *resistanceVal;
@property (weak, nonatomic) IBOutlet UIButton *Calculate;
@property (weak, nonatomic) IBOutlet UILabel *resVal1;
@property (weak, nonatomic) IBOutlet UILabel *resVal2;
@property (weak, nonatomic) IBOutlet UILabel *resVal3;
@property (weak, nonatomic) IBOutlet UILabel *resVal4;
@property (weak, nonatomic) IBOutlet UILabel *cannotCalc;

@end
