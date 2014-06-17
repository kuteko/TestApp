//
//  ViewController.h
//  daruma
//
//  Created by 内山 香 on 2014/01/01.
//  Copyright (c) 2014年 内山 香. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TimerViewController.h"

@interface ViewController : UIViewController
<UIPickerViewDataSource,UIPickerViewDelegate>


{
    
    IBOutlet UIButton *start_bt;
    NSString *mokuhyou [13],*mokuhyou_x;
    long mokuhyou_n;
    
}
//@property (nonatomic) NSString *mokuhyou_x;
//@property (weak, nonatomic) IBOutlet UIButton *nextButton;


-(IBAction)start:(id)sender;
@property (nonatomic) NSTimer *timer_m;
@property (nonatomic) NSTimer *timer_s;



@end
