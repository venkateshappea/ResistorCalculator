//
//  FinalResistanceViewController.m
//  Resistor Calculator
//
//  Created by Venkatesh Appea on 2015-04-19.
//  Copyright (c) 2015 Venkatesh Appea. All rights reserved.
//

#import "FinalResistanceViewController.h"
#import "ResistanceValViewController.h"

@interface FinalResistanceViewController ()
@property (weak, nonatomic) IBOutlet UILabel *displayResistance;

@end

@implementation FinalResistanceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ResistanceValViewController *vc= [[ResistanceValViewController alloc]init];
    NSString *text= vc.resistanceVal.text;
    _displayResistance.text = text;
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
