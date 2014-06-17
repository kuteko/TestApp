//
//  TimerViewController.m
//  daruma
//
//  Created by 内山 香 on 2014/01/08.
//  Copyright (c) 2014年 内山 香. All rights reserved.
//

#import "TimerViewController.h"

@interface TimerViewController()

@end

@implementation TimerViewController

@synthesize svStr;
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

-(void)viewDidLoad{
//    countをintにするup_mで1分ごとに起動もういっこint型の変数つくって1秒ごとにup_s起動
    [self timer];
    mokuhyou_n=[svStr intValue];
    daruma.center=CGPointMake(140, 295);
    hukidashi.center=CGPointMake(133, 220);
    hukidashi.alpha=0;
    label.alpha=0;
    ouen[0]=@"いいね〜";
    ouen[1]=@"やったれー";
    ouen[2]=@"ほいほい";
    ouen[3]=@"ヾ(*´∀｀*)ﾉ";
    ouen[4]=@"だるまん♪";
    ouen[5]=@"いけいけ";
    ouen[6]=@"にゃー";
    ouen[7]=@"(๑╹∀╹๑)";
    ouen[8]=@"ふぁいと";
    ouen[9]=@"やれるもん";
}





-(void)up_s{
    second=second+1;
    time_s.text=[NSString stringWithFormat:@"%d",second];
    if (second==60) {
        second=0;
        minute=minute+1;
        time_s.text=@"0";
  
        }
        time_m.text=[NSString stringWithFormat:@"%d",minute];
    }
//    NSLog(@"%@",_mokuhyou_x);
    


-(void)darumaanimation{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.7];
    
    [UIView setAnimationDelay:0.7];
    
//    daruma.transform=GAAffineTransformMakeTranslation(0, -20);
//    daruma.transform=CGAffineTransformMakeTranslation(0, 20);
    daruma.center=CGPointMake(140, 230);
    
    daruma.center=CGPointMake(140, 295);
   
    [UIView commitAnimations];
    
}
-(void)hukidashianimation{
    hukidashi.alpha=1;
    label.alpha=1;
        r=arc4random ()%10;
    label.text=ouen[r];
    NSLog(@"%@",ouen[r]);
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2];
    [UIView setAnimationDelay:0.7];
    hukidashi.alpha=0;
    label.alpha=0;
    
    [UIView commitAnimations];
}

-(IBAction)stop{
    if ([timer_s isValid]) {
        
//        [timer_m invalidate];
        [timer_d invalidate];
        [timer_s invalidate];
        [timer_h invalidate];
        
        [stop setTitle:@"つづける" forState:UIControlStateNormal];
        [finish setTitle:@"もうやめる" forState:UIControlStateNormal];
        finish.enabled=YES;
        finish.alpha=1;
    }
    else if(![timer_s isValid]){
//        [timer_m isValid];
        [self timer];
        [stop setTitle:@"すとっぷ" forState:UIControlStateNormal];
        finish.enabled=NO;
        finish.alpha=0.0;

        
    }
}
-(IBAction)finish:(id)sender{
    if (minute>=mokuhyou_n||mokuhyou_n==0) {
        hantei=1;
       
    }
    else{
        hantei=0;
    }
     NSLog(@"判定は%d,%d,%@",hantei,mokuhyou_n,svStr);
    
    UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    GoodViewController *goodviewcontroller=[storyboard instantiateViewControllerWithIdentifier:@"goodview"];
    NSString *a=[NSString stringWithFormat:@"%d",hantei];
    
    [goodviewcontroller setSvSte:a];
    
    [self presentViewController:goodviewcontroller animated:YES completion:nil];
    
    
}
-(void)timer{
    timer_h=[NSTimer scheduledTimerWithTimeInterval:60
                                             target:self
                                           selector:@selector(hukidashianimation)
                                           userInfo:nil
                                            repeats:YES];
    
    timer_d=[NSTimer scheduledTimerWithTimeInterval:3
                                            target:self
                                          selector:@selector(darumaanimation)
                                          userInfo:nil
                                           repeats:YES];
    timer_s=[NSTimer scheduledTimerWithTimeInterval:1
                                             target:self
                                           selector:@selector(up_s)
                                           userInfo:nil
                                            repeats:YES];
        [stop setTitle:@"すとっぷ" forState:UIControlStateNormal];
    finish.enabled=NO;
    finish.alpha=0.0;
}



@end
