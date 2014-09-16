//
//  DetailViewController.m
//  TheEarthMap
//
//  Created by Ken Harada on 2014/09/10.
//  Copyright (c) 2014年 Ken Harada. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

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
    self.navigationItem.title=@"Photos";
    
    //セレクト南無三の番号を使って国を判別.%d-1,2,3,4,5この番号がimageViewの番号と照合
    self.Photo1.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d-1.jpg",_selectnum]];
    self.Photo2.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d-2.jpg",_selectnum]];
    self.Photo3.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d-3.jpg",_selectnum]];
    self.Photo4.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d-4.jpg",_selectnum]];
    self.Photo5.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d-5.jpg",_selectnum]];
    self.Photo6.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d-6.jpg",_selectnum]];
    self.Photo7.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d-7.jpg",_selectnum]];
    self.Photo8.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d-8.jpg",_selectnum]];
    self.Photo9.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d-9.jpg",_selectnum]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)tapPhoto1:(id)sender {
    NSLog(@"1");
    DetailViewController2 *DetailViewController2=[self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController2"];
    [[self navigationController]pushViewController:DetailViewController2 animated:YES];
    
}

- (IBAction)tapPhoto2:(id)sender {
    DetailViewController2 *DetailViewController2=[self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController2"];
    [[self navigationController]pushViewController:DetailViewController2 animated:YES];
    NSLog(@"2");
}

- (IBAction)tapPhoto3:(id)sender {DetailViewController2 *DetailViewController2=[self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController2"];
    [[self navigationController]pushViewController:DetailViewController2 animated:YES];
    NSLog(@"3");
}

- (IBAction)tapPhoto4:(id)sender {DetailViewController2 *DetailViewController2=[self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController2"];
    [[self navigationController]pushViewController:DetailViewController2 animated:YES];
    NSLog(@"4");
}

- (IBAction)tapPhoto6:(id)sender {DetailViewController2 *DetailViewController2=[self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController2"];
    [[self navigationController]pushViewController:DetailViewController2 animated:YES];
    NSLog(@"6");
}

- (IBAction)tapPhoto7:(id)sender {DetailViewController2 *DetailViewController2=[self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController2"];
    [[self navigationController]pushViewController:DetailViewController2 animated:YES];
    NSLog(@"7");
}

- (IBAction)tapPhoto8:(id)sender {DetailViewController2 *DetailViewController2=[self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController2"];
    [[self navigationController]pushViewController:DetailViewController2 animated:YES];
    NSLog(@"8");
}

- (IBAction)tapPhoto9:(id)sender {DetailViewController2 *DetailViewController2=[self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController2"];
    [[self navigationController]pushViewController:DetailViewController2 animated:YES];
    NSLog(@"9");
}

- (IBAction)tapPhoto5:(id)sender {
    DetailViewController2 *DetailViewController2 = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController2"];
    [[self navigationController]pushViewController:DetailViewController2 animated:YES];
    //この３行で１→２に画面遷移する
    NSLog(@"5");
}




@end