//
//  DetailViewController2.m
//  TheEarthMap
//
//  Created by Ken Harada on 2014/09/12.
//  Copyright (c) 2014年 Ken Harada. All rights reserved.
//

#import "DetailViewController2.h"

@interface DetailViewController2 ()

@end

@implementation DetailViewController2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self dismissViewControllerAnimated:YES completion:nil];
    //戻るボタン
    self.navigationItem.title=@"国名";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    }


@end
