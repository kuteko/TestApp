//
//  ViewController.m
//  daruma
//
//  Created by 内山 香 on 2014/01/01.
//  Copyright (c) 2014年 内山 香. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController{
    UIPickerView *picker;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    for (int i = 0; i < 13; i++) {
        
            NSString *mokuhyoutext = [NSString stringWithFormat: @"%d分", i*10];
            mokuhyou[i] = mokuhyoutext;
        
        
    }
    picker.delegate=self;
    
    picker.dataSource=self;
    
    picker.showsSelectionIndicator=YES;
    
    [self.view addSubview:picker];
    
   
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 13;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return mokuhyou[row];
    
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{

    mokuhyou_n= row*10;
    
    NSLog(@"目標は%ld分",mokuhyou_n);
    
   
}

-(IBAction)start:(id)sender{
    UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    TimerViewController *timerviewcontroller=[storyboard instantiateViewControllerWithIdentifier:@"timerview"];
    mokuhyou_x=[NSString stringWithFormat:@"%ld",mokuhyou_n];
    
    [timerviewcontroller setSvStr:mokuhyou_x];
    
    [self presentViewController:timerviewcontroller animated:YES completion:nil];
    
}
//-(IBAction)start:(id)sender{
//    if (![timer_m isValid]) {
//        
//        timer_m=[NSTimer scheduledTimerWithTimeInterval:60
//                                                 target:self
//                                               selector:@selector(up_m)
//                                               userInfo:nil
//                                                repeats:YES];
//        
//        timer_s=[NSTimer scheduledTimerWithTimeInterval:1
//                                                 target:self
//                                               selector:@selector(up_s)
//                                               userInfo:nil
//                                                repeats:YES];
//        
//        
//    }
//}


@synthesize timer_m;
@synthesize timer_s;

@end
