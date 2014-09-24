//
//  CountryListViewController.m
//  TheEarthMap
//
//  Created by Ken Harada on 2014/09/18.
//  Copyright (c) 2014年 Ken Harada. All rights reserved.
//

#import "CountryListViewController.h"
#import "DetailViewController.h"


@interface CountryListViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation CountryListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.CountryView.delegate=self;
    self.CountryView.dataSource=self;
    
    // セクション名を設定する
    sectionList =  [NSArray arrayWithObjects:@"アジア", @"ヨーロッパ",@"アフリカ",@"北アメリカ",@"南アメリカ",@"オセアニア",@"その他",nil];
    
    // セルの項目を作成する
    NSArray *asia = [NSArray arrayWithObjects:@"カンボジア",@"インド",@"トルコ",@"中国",@"日本",@"フィリピン",@"ヨルダン",@"ベトナム",@"タイ",nil];
    NSArray *eorope = [NSArray arrayWithObjects:@"フランス",@"イタリア",@"フィンランド",@"スペイン",@"ギリシャ", nil];
    NSArray *africa = [NSArray arrayWithObjects:@"南アフリカ",@"ケニア",@"ジンバブエ",@"エジプト",nil];
    NSArray *north=[NSArray arrayWithObjects:@"カナダ",@"メキシコ",@"アメリカ",nil];
    NSArray *south=[NSArray arrayWithObjects:@"ボリビア",@"ペルー",@"ブラジル",@"アルゼンチン",@"エクアドル",nil];
    NSArray *oseania=[NSArray arrayWithObjects:@"オーストラリア",@"ニュージーランド",nil];
    NSArray *Other=[NSArray arrayWithObjects:@"ロシア",@"イスラエル",nil];
    
    
    // セルの項目をまとめる
    NSArray *datas = [NSArray arrayWithObjects:asia,eorope,africa,north,south,oseania,Other,nil];
    
    dataSource = [NSDictionary dictionaryWithObjects:datas forKeys:sectionList];
}
    


////セクション数
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//
//    return [sectionList count];
//}
//
//
//
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    //行数
//    return 5;
//    
//    
//}
////表示するセル
//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    //staticかわらない
//    static NSString *CellIdentifer=@"Cell";
//    
//    
//    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:CellIdentifer];
//    
//    //nil=空。　セルの初期化とスタイルの決定
//    if (cell==nil ) {
//        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifer];
//    }
//    NSString *title=[NSString stringWithFormat:@"セクション%dの%d行目",indexPath.section,indexPath.row];
//    
//    cell.textLabel.text=title;
//    
//
//    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
//    
//        return  cell;
//    //教科書通りのセルの内容設定

//}
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSLog(@"負けるな！！！");
//    

//}


//テーブル全体のセクションの数を返す

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [sectionList count];
}

/**
 * 指定されたセクションのセクション名を返す
 */
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [sectionList objectAtIndex:section];
}

/**
 * 指定されたセクションの項目数を返す
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSString *sectionName = [sectionList objectAtIndex:section];
    return [[dataSource objectForKey:sectionName ]count];
}

/**
 * 指定された箇所のセルを作成する
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    // セルが作成されていないか?
    if (!cell) { // yes
        // セルを作成
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    // セクション名を取得する
    NSString *sectionName = [sectionList objectAtIndex:indexPath.section];
    
    // セクション名をキーにしてそのセクションの項目をすべて取得
    NSArray *items = [dataSource objectForKey:sectionName];
    
    // セルにテキストを設定
    cell.textLabel.text = [items objectAtIndex:indexPath.row];
    
    //cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    
    cell.backgroundColor=[UIColor colorWithRed:0.598 green:0.865 blue:1.00 alpha:1.0f];
    
//R:68 G:111 B:229
    
    
    return cell;
}

/**
 * セルが選択されたとき
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // セクション名を取得する
    NSString *sectionName = [sectionList objectAtIndex:indexPath.section];
    
    // セクション名をキーにしてそのセクションの項目をすべて取得
    NSArray *items = [dataSource objectForKey:sectionName];
    
    NSLog(@"「%@」が選択されましたyo----!!", [items objectAtIndex:indexPath.row]);
    
    DetailViewController *DetailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    
    
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"カンボジア"]) {
        DetailViewController.selectnum=1;
        
    }
    if ([ [items objectAtIndex:indexPath.row]isEqualToString:@"イスラエル"]) {
        DetailViewController.selectnum=2;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"ボリビア"]) {
        DetailViewController.selectnum=3;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"フランス"]) {
        DetailViewController.selectnum=4;
    }
    
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"イタリア"]) {
        DetailViewController.selectnum=5;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"フィンランド"]) {
        DetailViewController.selectnum=6;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"カナダ"]) {
        DetailViewController.selectnum=7;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"オーストラリア"]) {
        DetailViewController.selectnum=8;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"スペイン"]) {
        DetailViewController.selectnum=9;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"インド"]) {
        DetailViewController.selectnum=10;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"トルコ"]) {
        DetailViewController.selectnum=11;
    }
    
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"ペルー"]) {
        DetailViewController.selectnum=12;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"中国"]) {
        DetailViewController.selectnum=13;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"ロシア"]) {
        DetailViewController.selectnum=14;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"南アフリカ"]) {
        DetailViewController.selectnum=15;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"ブラジル"]) {
        DetailViewController.selectnum=16;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"アメリカ"]) {
        DetailViewController.selectnum=17;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"日本"]) {
        DetailViewController.selectnum=18;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"メキシコ"]) {
        DetailViewController.selectnum=19;
    }
    
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"ケニア"]) {
        DetailViewController.selectnum=20;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"フィリピン"]) {
        DetailViewController.selectnum=21;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"ネパール"]) {
        DetailViewController.selectnum=22;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"イエメン"]) {
        DetailViewController.selectnum=23;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"ジンバブエ"]) {
        DetailViewController.selectnum=24;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"ニュージーランド"]) {
        DetailViewController.selectnum=25;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"アルゼンチン"]) {
        DetailViewController.selectnum=26;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"ヨルダン"]) {
        DetailViewController.selectnum=27;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"エジプト"]) {
        DetailViewController.selectnum=28;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"エクアドル"]) {
        DetailViewController.selectnum=29;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"モルディブ"]) {
        DetailViewController.selectnum=30;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"ギリシャ"]) {
        DetailViewController.selectnum=31;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"ベトナム"]) {
        DetailViewController.selectnum=32;
    }
    if ([[items objectAtIndex:indexPath.row] isEqualToString:@"タイ"]) {
        DetailViewController.selectnum=33;
        //写真の追加から
    }
    [[self navigationController]pushViewController:DetailViewController animated:YES];
    //[self presentViewController:DetailViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}


@end
