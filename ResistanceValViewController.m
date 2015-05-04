    //
//  ResistanceValViewController.m
//  Resistor Calculator
//
//  Created by Venkatesh Appea on 2015-04-19.
//  Copyright (c) 2015 Venkatesh Appea. All rights reserved.
//

#import "ResistanceValViewController.h"

@interface ResistanceValViewController ()

@end

@implementation ResistanceValViewController
@synthesize Calculate;
@synthesize resVal1;
@synthesize resistanceVal;
@synthesize resVal2;
@synthesize resVal3;
@synthesize resVal4;
@synthesize cannotCalc;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Calculate:(id)sender {
    
    NSString *resval= resistanceVal.text;
    
    int value = [resval intValue];
    
    NSUInteger size = [resval length];
    NSMutableArray *resarray = [NSMutableArray array];
    bool canCalc = true;
    //first check is size applicable
    if(size > 2){
        int updatedval2 = value;
        for(int i=3; i < size+1;i++){
            int current = updatedval2%10;
            if ( current!=0) {
                cannotCalc.text = @"cannot Calculate";
                 Calculate.hidden = YES;
                canCalc = false;
                break;
            }
            updatedval2 = updatedval2/10;
        }
    }
    
    if (canCalc){
        int updatedval = value;
        for(int i =0; i < size; i++){
            //retreive first character
           // NSString *code = [resval substringToIndex:i];
            //NSString *code2 = [resval substringFromIndex:i];
           
           // int currentval = [code intValue];
          //  int currentval2 = [code intValue];
          int   currentval = updatedval %(10);
          int currentval2 = updatedval %(10);
            if(currentval <= 9 && currentval >= 0){
                if( currentval ==0 || currentval2 ==0){
                    [resarray addObject:@"black"];
                }
                if( currentval == 1 || currentval2 ==1){
                    [resarray addObject:@"brown"];
                }
                if(currentval == 2 || currentval2 ==2){
                    [resarray addObject:@"red"];
                }
                if(currentval ==3 || currentval2 ==3){
                    [resarray addObject:@"orange"];
                }
                if(currentval == 4 || currentval2==4){
                    [resarray addObject:@"yellow"];
                }
                if(currentval == 5 || currentval2 ==5){
                    [resarray addObject:@"green"];
                }
                if(currentval == 6|| currentval2==6){
                    [resarray addObject:@"blue"];
                }
                if(currentval ==7||currentval2==7){
                    [resarray addObject:@"violet"];
                }
                if(currentval ==8||currentval2==8){
                    [resarray addObject: @"grey"];
                }
                if(currentval ==9|| currentval2==9){
                    [resarray addObject:@"white"];
                }
                updatedval = updatedval/10;
                
                
            } else {
                resVal1.text =@"cannot Calculate";
            }
        }
        //figure out the multiplier now
        NSString * multiplier;
        if(size == 1 || size ==2) {
            multiplier =@"black";
            resVal3.text = @"black";
            resVal3.textColor =[UIColor whiteColor];
            resVal3.backgroundColor =[UIColor blackColor];
            
        }
        if(size ==3){
            multiplier =@"brown";
            resVal3.text = @"brown";
            resVal3.textColor =[UIColor whiteColor];
            resVal3.backgroundColor=[UIColor brownColor];
        }
        if(size ==4){
            multiplier =@"red";
            resVal3.text = @"red";
            resVal3.textColor =[UIColor whiteColor];
            resVal3.backgroundColor =[UIColor redColor];
        }
        if(size ==5) {
            multiplier=@"orange";
            resVal3.text = @"orange";
            resVal3.textColor =[UIColor whiteColor];
            resVal3.backgroundColor =[UIColor orangeColor];
        }
        if(size ==6) {
            multiplier=@"yellow";
            resVal3.text = @"yellow";
            resVal3.textColor =[UIColor blackColor];
            resVal3.backgroundColor =[UIColor yellowColor];
        }
        if(size==7) {
            multiplier=@"green";
            resVal3.text = @"green";
            resVal3.textColor =[UIColor whiteColor];
            resVal3.backgroundColor =[UIColor greenColor];
        }
        if(size ==8) {
            multiplier=@"blue";
            resVal3.text = @"blue";
            resVal3.textColor =[UIColor whiteColor];
            resVal3.backgroundColor =[UIColor blueColor];
        }
        if(size ==9){
            multiplier=@"violet";
            resVal3.text = @"violet";
            resVal3.textColor =[UIColor whiteColor];
            resVal3.backgroundColor =[UIColor purpleColor];
        }
        if(size ==10){
            multiplier=@"grey";
            resVal1.text = @"white";
            resVal1.textColor =[UIColor blackColor];
            resVal1.backgroundColor =[UIColor grayColor];
        }
        if(size==11){
            multiplier=@"white";
            resVal1.text = @"white";
            resVal1.textColor =[UIColor blackColor];
            resVal1.backgroundColor =[UIColor grayColor];
        }
        
        
        for (int i = size-1; i >=0; i--)
        {
            NSString *element = [resarray objectAtIndex:i];
            if(element == @"black"){
                if(i ==3) {
                    resVal1.text = @"black";
                    resVal1.textColor =[UIColor whiteColor];
                    resVal1.backgroundColor =[UIColor blackColor];
                }
                if(i==2){
                    resVal2.text = @"black";
                    resVal2.textColor =[UIColor whiteColor];
                    resVal2.backgroundColor =[UIColor blackColor];
                }
            }
            
            
            if(element == @"brown"){
                if(i ==3) {
                    resVal1.text = @"brown";
                    resVal1.textColor =[UIColor whiteColor];
                    resVal1.backgroundColor=[UIColor brownColor];
                }
                if(i==2){
                    resVal2.text = @"brown";
                    resVal2.textColor =[UIColor whiteColor];
                    resVal2.backgroundColor =[UIColor brownColor];
                }
            }
            
            if(element == @"red"){
                if(i ==3) {
                    resVal1.text = @"red";
                    resVal1.textColor =[UIColor whiteColor];
                    resVal1.backgroundColor =[UIColor redColor];
                }
                if(i==2){
                    resVal2.text = @"red";
                    resVal2.textColor =[UIColor whiteColor];
                    resVal2.backgroundColor =[UIColor redColor];
                }
            }
            
            if(element == @"orange"){
                if(i ==3) {
                    resVal1.text = @"orange";
                    resVal1.textColor =[UIColor whiteColor];
                    resVal1.backgroundColor =[UIColor orangeColor];
                }
                if(i==2){
                    resVal2.text = @"orange";
                    resVal2.textColor =[UIColor whiteColor];
                    resVal2.backgroundColor =[UIColor orangeColor];
                }
            }
            
            if(element == @"yellow"){
                if(i ==3) {
                    resVal1.text = @"yellow";
                    resVal1.textColor =[UIColor blackColor];
                    resVal1.backgroundColor =[UIColor yellowColor];
                }
                if(i==2){
                    resVal2.text = @"yellow";
                    resVal2.textColor =[UIColor blackColor];
                    resVal2.backgroundColor =[UIColor yellowColor];
                }
            }
            
            if(element == @"green"){
                if(i ==3) {
                    resVal1.text = @"green";
                    resVal1.textColor =[UIColor whiteColor];
                    resVal1.backgroundColor =[UIColor greenColor];
                }
                if(i==2){
                    resVal2.text = @"green";
                    resVal2.textColor =[UIColor whiteColor];
                    resVal2.backgroundColor =[UIColor greenColor];
                }
            }
            
            if(element == @"blue"){
                if(i ==3) {
                    resVal1.text = @"blue";
                    resVal1.textColor =[UIColor whiteColor];
                    resVal1.backgroundColor =[UIColor blueColor];
                }
                if(i==2){
                    resVal2.text = @"blue";
                    resVal2.textColor =[UIColor whiteColor];
                    resVal2.backgroundColor =[UIColor blueColor];
                }
            }
            
            if(element == @"violet"){
                if(i ==3) {
                    resVal1.text = @"violet";
                    resVal1.textColor =[UIColor whiteColor];
                    resVal1.backgroundColor =[UIColor purpleColor];
                }
                if(i==2){
                    resVal2.text = @"violet";
                    resVal2.textColor =[UIColor whiteColor];
                    resVal2.backgroundColor =[UIColor purpleColor];
                }
            }
            
            if(element == @"gray"){
                if(i ==3) {
                    resVal1.text = @"gray";
                    resVal1.textColor =[UIColor blackColor];
                    resVal1.backgroundColor =[UIColor grayColor];
                }
                if(i==2){
                    resVal2.text = @"gray";
                    resVal2.textColor =[UIColor blackColor];
                    resVal2.backgroundColor =[UIColor grayColor];
                }
            }
            
            if(element == @"white"){
                if(i ==3) {
                    resVal1.text = @"white";
                    resVal1.textColor =[UIColor blackColor];
                    resVal1.backgroundColor =[UIColor grayColor];
                }
                if(i==2){
                    resVal2.text = @"white";
                    resVal2.textColor =[UIColor blackColor];
                    resVal2.backgroundColor =[UIColor grayColor];
                }
                
            }
        }
        
        //we use a constant tolorence val for now
        resVal4.text=@"gold tol.";
        resVal4.textColor =[UIColor blackColor];
        resVal4.backgroundColor =[UIColor yellowColor];
        Calculate.hidden = YES;
  
    }
    
}







/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if(sender !=self.Calculate) return;
    if(self.resistanceVal.text.length > 0){
        int val = 
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
 */


@end
