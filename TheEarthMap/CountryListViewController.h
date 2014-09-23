//
//  CountryListViewController.h
//  TheEarthMap
//
//  Created by Ken Harada on 2014/09/18.
//  Copyright (c) 2014年 Ken Harada. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountryListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

{
    NSArray *sectionList;
    NSDictionary *dataSource;
}
@property (weak, nonatomic) IBOutlet UITableView *CountryView;



@end

