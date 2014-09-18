//
//  AppDelegate.m
//  TheEarthMap
//
//  Created by Ken Harada on 2014/09/07.
//  Copyright (c) 2014年 Ken Harada. All rights reserved.
//

#import "AppDelegate.h"
#import "MFSideMenu.h"
#import "ViewController.h"


@implementation AppDelegate

-(ViewController *)demoController{

    UIStoryboard *mainStoryBord =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
  
    return [mainStoryBord instantiateViewControllerWithIdentifier:@"StartViewController"];

}

-(UINavigationController *)navigationController{

    return [[UINavigationController alloc]initWithRootViewController:[self demoController]];


}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.countrylist=@[@"カンボジア",@"イスラエル",@"ボリビア",@"フランス",@"イタリア",@"フィンランド",@"カナダ",@"オーストラリア",@"スペイン",@"インド",@"トルコ",@"ペルー",@"中国",@"ロシア",@"南アフリカ",@"ブラジル",@"アメリカ",@"日本",@"メキシコ",@"ケニア",@"フィリピン",@"ネパール",@"イエメン",@"ジンバブエ",@"ニュージーランド",@"アルゼンチン",@"ヨルダン",@"エジプト",@"エクアドル"];
    UIStoryboard *mainStoryBoard =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *navigationcontroller= [mainStoryBoard instantiateViewControllerWithIdentifier:@"NavigationController"];
    
    UIViewController *leftSideMenuController=[mainStoryBoard instantiateViewControllerWithIdentifier:@"CountryListViewController"];
    
    
    MFSideMenuContainerViewController *container = [MFSideMenuContainerViewController
                                                    containerWithCenterViewController:navigationcontroller
                                                    leftMenuViewController:leftSideMenuController
                                                    rightMenuViewController:nil];
    self.window.rootViewController = container;
    [self.window makeKeyAndVisible];
    return YES;
}


							
- (void)applicationWillResignActive:(UIApplication *)application
{
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
