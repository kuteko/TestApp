//
//  GoodViewController.m
//  daruma
//
//  Created by 内山 香 on 2014/01/08.
//  Copyright (c) 2014年 内山 香. All rights reserved.
//

#import "GoodViewController.h"

@interface GoodViewController()

@end

@implementation GoodViewController

@synthesize svSte;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        
    }
    return self;
    
}
-(void)viewDidLoad{
    hante=[svSte boolValue];
    if(hante==0){
        
        array[0]=[UIImage imageNamed:@"bad.png"];
        label_r.text=@"たっせいならず…";
        label_r.textColor=[UIColor blueColor];
        [result setImage:array[1];
   }
    else{
        
        array[1]=[UIImage imageNamed:@"good.png"];
        label_r.text=@"もくひょうたっせい!";
        label_r.textColor=[UIColor redColor];
        [result setImage:array[1]];

    }
        
}

@end
