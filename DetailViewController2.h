//
//  DetailViewController2.h
//  TheEarthMap
//
//  Created by Ken Harada on 2014/09/12.
//  Copyright (c) 2014年 Ken Harada. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
//広告バナーの追加のimportに書き込む
#import <iAd/iAd.h>

@interface DetailViewController2 : UIViewController<UIWebViewDelegate,ADBannerViewDelegate,UIScrollViewDelegate>
//selectnumを２つ設定する。countryとphotoの二種類ご用意
@property(nonatomic,assign) int photoselectnum;
@property(nonatomic,assign) int countryselectnum;
@property (weak, nonatomic) IBOutlet UIImageView *Photodetail;
@property (weak, nonatomic) IBOutlet UILabel *DetailLabel;
@property (weak, nonatomic) IBOutlet UIImageView *backimage;
@property (weak, nonatomic) IBOutlet UIView *PhotoView;
@property (weak, nonatomic) IBOutlet UIScrollView *ScrollView;

- (IBAction)ShareBtn:(id)sender;


@end
