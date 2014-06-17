//
//  TimerViewController.h
//  daruma
//
//  Created by 内山 香 on 2014/01/08.
//  Copyright (c) 2014年 内山 香. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GoodViewController.h"

@interface TimerViewController : UIViewController{
    
    IBOutlet UILabel *time_m,*time_s,*label;
    IBOutlet UIButton *stop,*finish;
//    IBOutlet UIImageView *haikei;
    IBOutlet UIImageView *daruma,*hukidashi;
//   NSString *mokuhyou_x;
    

    int mokuhyou_n,minute,second,r;
    BOOL hantei;
    NSString *ouen[10];
//    NSTimer *timer_m;
    NSTimer *timer_s,*timer_d,*timer_h;
    
}



-(IBAction)stop;
-(IBAction)finish:(id)sender;
//-(void)up_m;
-(void)up_s;
-(void)timer;
-(void)viewDidAppear:(BOOL)animated;


@property (nonatomic,copy) NSString *svStr;
@end
