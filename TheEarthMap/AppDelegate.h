//
//  AppDelegate.h
//  TheEarthMap
//
//  Created by Ken Harada on 2014/09/07.
//  Copyright (c) 2014年 Ken Harada. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountryListViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

{
    CountryListViewController *tableViewController;
}



@property (strong, nonatomic) UIWindow *window;
//countrylistを使うという宣言をappdelegateで。なぜならcountryはすべての場所で使うため
@property(strong,nonatomic) NSArray *countrylist;

@end

//@class ViewController;
//アプリを作る時本当にユーザーのことを考えることが大事。いかにユーザーのことを考えるかにかかっている。

