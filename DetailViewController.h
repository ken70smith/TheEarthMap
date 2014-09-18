//
//  DetailViewController.h
//  TheEarthMap
//
//  Created by Ken Harada on 2014/09/10.
//  Copyright (c) 2014年 Ken Harada. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController2.h"
#import "AppDelegate.h"


@interface DetailViewController : UIViewController
//画像に関係させる数字を送るグローバル変数
@property(nonatomic,assign) int selectnum;

@property (weak, nonatomic) IBOutlet UIImageView *Photo1;
@property (weak, nonatomic) IBOutlet UIImageView *Photo2;
@property (weak, nonatomic) IBOutlet UIImageView *Photo3;
@property (weak, nonatomic) IBOutlet UIImageView *Photo4;
@property (weak, nonatomic) IBOutlet UIImageView *Photo5;
@property (weak, nonatomic) IBOutlet UIImageView *Photo6;
@property (weak, nonatomic) IBOutlet UIImageView *Photo7;
@property (weak, nonatomic) IBOutlet UIImageView *Photo8;
@property (weak, nonatomic) IBOutlet UIImageView *Photo9;

- (IBAction)tapPhoto1:(id)sender;
- (IBAction)tapPhoto2:(id)sender;
- (IBAction)tapPhoto3:(id)sender;
- (IBAction)tapPhoto4:(id)sender;
- (IBAction)tapPhoto6:(id)sender;
- (IBAction)tapPhoto7:(id)sender;

- (IBAction)tapPhoto8:(id)sender;

- (IBAction)tapPhoto9:(id)sender;
- (IBAction)tapPhoto5:(id)sender;


@end
