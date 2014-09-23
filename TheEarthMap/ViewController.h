//
//  ViewController.h
//  TheEarthMap
//
//  Created by Ken Harada on 2014/09/07.
//  Copyright (c) 2014年 Ken Harada. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "DetailViewController.h"
//iadを追加して広告を入れる。
#import <iAd/iAd.h>
#import "UIViewController+MFSideMenuAdditions.h"
#import "MFSideMenuContainerViewController.h"





@interface ViewController : UIViewController<MKMapViewDelegate,ADBannerViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *CirclePhoto;

@end
