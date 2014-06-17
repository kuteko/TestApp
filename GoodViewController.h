//
//  GoodViewController.h
//  daruma
//
//  Created by 内山 香 on 2014/01/08.
//  Copyright (c) 2014年 内山 香. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GoodViewController : UIViewController{
    IBOutlet UIImageView *result;
    IBOutlet UILabel *label_r;
    UIImage *array [2];
    
    NSString *img;
    
    BOOL hante;
    
    
}
@property (nonatomic,copy) NSString *svSte;
@end
