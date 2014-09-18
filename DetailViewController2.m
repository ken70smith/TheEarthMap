//
//  DetailViewController2.m
//  TheEarthMap
//
//  Created by Ken Harada on 2014/09/12.
//  Copyright (c) 2014年 Ken Harada. All rights reserved.
//

#import "DetailViewController2.h"

@interface DetailViewController2 ()
//dictionary型を定義.このdictionaryは国の説明と写真番号を記録
{
    NSDictionary *_DetailDictionary;
}

@end

@implementation DetailViewController2

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
    [self dismissViewControllerAnimated:YES completion:nil];
    //戻るボタンの生成
    
    //自作メソッドの呼び出し
    [self CreateDetailDictionary];
    //dictionary型はobjecttforkeyを使う
    self.DetailLabel.text=[_DetailDictionary objectForKey:[NSString stringWithFormat:@"%d-%d",self.countryselectnum,self.photoselectnum]];
    //宣言してインスタンス化
    AppDelegate *appDelegate=(AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    
    //セレクトナムには１からスタート。しかしarryは０がカンボジアなのでselectnum-1で定義される。2p目の上の文字表示
    self.navigationItem.title=appDelegate.countrylist[self.countryselectnum-1];

    
    
    
    //題名
    //self.navigationItem.title=@"国名";
    //基本的な形はself.imageView.image=[uiimage imagenamed@"1-1.jpg"];
    self.Photodetail.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d-%d.jpg",self.countryselectnum,self.photoselectnum]];
    
    
}
//dictionaryの自作メソッド
-(void)CreateDetailDictionary{
//説明の追加のメソッド
    _DetailDictionary = @{@"1-1":@"テスト",@"1-2":@"テスト2",@"1-3":@"テスト3",@"1-4":@"テスト4",@"1-5":@"テスト5",@"1-6":@"テスト6",@"1-7":@"テスト7",@"1-8":@"テスト8",@"1-9":@"テスト9",
                          @"2-1":@"エルサレムと絨毯",@"2-2":@"マサダ",@"2-3":@"香料の道、ネゲウ砂漠都市",@"2-4":@"エルサレム旧市街",@"2-5":@"テルアビブの白い都市",@"2-6":@"エルサレム旧市街の店の店主",@"2-7":@"エルサレム旧市街",@"2-8":@"エルサレム旧市街の壁",@"2-9":@"エルサレムの人々",
                          @"3-1":@"ポトシ",@"3-2":@"ウユニ塩湖と旅人",@"3-3":@"ポトシの町並み",@"3-4":@"ラパスの女性",@"3-5":@"ラパスの人々",@"3-6":@"ウユニ塩湖",@"3-7":@"ウユニ塩湖",@"3-8":@"塩のホテル",@"3-9":@"ポトシの鉱山の男",
                          @"4-1":@"ルーブル美術館",@"4-2":@"モンサンミッシェル修道院",@"4-3":@"ランス郊外のブドウ畑",@"4-4":@"セーヌ河に架かる橋",@"4-5":@"リヨン歴史地区",@"4-6":@"ピレネー山脈",@"4-7":@"パリの風景",@"4-8":@"凱旋門",@"4-9":@"ヴェルサイユ宮殿",
                          @"5-1":@"カプリ島",@"5-2":@"ローマ歴史地区",@"5-3":@"宮殿のカメラマン",@"5-4":@"ヴェローナ市の菓子屋",@"5-5":@"アマルフィの海岸",@"5-6":@"フィレンツェの旧市街",@"5-7":@"ドロミーティの風景",@"5-8":@"郊外の草原",@"5-9":@"ヴェネツィアとその湾",
                          @"6-1":@"ウニコのマリメッコ",@"6-2":@"極寒のフィンランド",@"6-3":@"シュトルーヴェの三角アーチ",@"6-4":@"ラウマ旧市街",@"6-5":@"ヴェルラ砕木・板紙工場",@"6-6":@"スオメンリンナの要塞",@"6-7":@"スオメンリンナの要塞",@"6-8":@"スオメンリンナの要塞",@"6-9":@"ヴェルラ砕木・板紙工場",
                          @"7-1":@"恐竜州立自然公園",@"7-2":@"カナダと言えばカヌー",@"7-3":@"ケベック旧市街",@"7-4":@"ケベック旧市街のクリスマスの夜",@"7-5":@"ナイアガラの滝",@"7-6":@"ケベック旧市街歴史地区",@"7-7":@"カナディアン・ロッキー山脈自然公園",@"7-8":@"パンフ国立公園を走る列車",@"7-9":@"恐竜州立自然公園",
                          @"8-1":@"タスマニア",@"8-2":@"コアラ",@"8-3":@"ザ・ナット、タスマニアの北西部",@"8-4":@"ウィートサンデー諸島ホワイトへブンビーチ",@"8-5":@"エアーズロック",@"8-6":@"グレートバリアリーフ",@"8-7":@"鮮やかな海辺の灯台",@"8-8":@"チューリップと羊",@"8-9":@"ブルーニー島",
                          @"9-1":@"カサミラ・アントニガウディの作品",@"9-2":@"カサ・バトリョ、アントニ・ガウディの作品",@"9-3":@"アルハンブラ宮殿",@"9-4":@"１３世紀のデザイン",@"9-5":@"アントニ・ガウディの作品、グエル公園",@"9-6":@"アルハンブラ宮殿",@"9-7":@"アントニ・ガウディの作品、サクラダ・ファミリア",@"9-8":@"イビサ島",@"9-9":@"アントニ・ガウディの作品、グエル公園",
                          @"10-1":@"カイラーサナータ寺院",@"10-2":@"タージマハル",@"10-3":@"セイラーサナータ寺院",@"10-4":@"バラナシの人々",@"10-5":@"ダージリンの風景",@"10-6":@"ダージリンの茶畑",@"10-7":@"王道",@"10-8":@"バラナシ",@"10-9":@"バラナシの日常",
                          @"11-1":@"イスタンブール歴史地区",@"11-2":@"スレイマニエ・モスク",@"11-3":@"イスタンブールのランプ屋",@"11-4":@"イスタンブールのスパイス屋",@"11-5":@"髪の毛の美術館",@"11-6":@"スルタンアフメトモスク",@"11-7":@"トルコの気球",@"11-8":@"地下宮殿の内部",@"11-9":@"カッパドキア、奇岩の風景",};
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    }


@end
