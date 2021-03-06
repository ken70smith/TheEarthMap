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
    //広告バナーのプロトコル
    ADBannerView *_adView;
    BOOL _isVisible;
}

@end

@implementation DetailViewController2
@synthesize ScrollView;
@synthesize Photodetail;


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
    
    
    // UIScrollViewインスタンスを生成
//    self.ScrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
//    self.ScrollView.delegate = self;
//    self.ScrollView.contentSize = CGSizeMake(1600, 1200);
//    
//    // 縮小・拡大率を設定
//    self.ScrollView.minimumZoomScale = 0.5f;
//    self.ScrollView.maximumZoomScale = 5.0f;
//    
//    // ターゲットとなるコンテンツをaScrollViewのサブビューに追加
//    [self.ScrollView addSubview:Photodetail];
//    
//    [self.PhotoView addSubview:self.ScrollView];
//    
//写真にズーム機能を搭載する。
    //最小倍率が等倍、最大倍率が三倍に設定する
    
    self.ScrollView.minimumZoomScale = 1.0;
    self.ScrollView.maximumZoomScale = 3.0;
    
    //ヘッダーにデリゲートの宣言をしてselfで使用可能にする
    ScrollView.delegate = self;
    //self.ScrollView.contentSize=CGSizeMake(1600, 1200);
    
    
     //戻るボタンの生成
    //[self dismissViewControllerAnimated:YES completion:nil];
        
    
    //自作メソッドの呼び出し
    [self CreateDetailDictionary];
    //dictionary型はobjecttforkeyを使う
    self.DetailLabel.text=[_DetailDictionary objectForKey:[NSString stringWithFormat:@"%d-%d",self.countryselectnum,self.photoselectnum]];
    //宣言してインスタンス化
    AppDelegate *appDelegate=(AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    
    //セレクトナムには１からスタート。しかしarryは０がカンボジアなのでselectnum-1で定義される。2p目の上の文字表示
    self.navigationItem.title=appDelegate.countrylist[self.countryselectnum-1];
    
    
    
    //背景にimageviewを使用している
    self.backimage.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d-%d.jpg",self.countryselectnum,self.photoselectnum]]];

    //self.backimage.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d-%d.jpg",self.countryselectnum,self.photoselectnum]];
    self.backimage.alpha=0.3;
    
    
    //題名
    //self.navigationItem.title=@"国名";
    //基本的な形はself.imageView.image=[uiimage imagenamed@"1-1.jpg"];
    self.Photodetail.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d-%d.jpg",self.countryselectnum,self.photoselectnum]];
    self.Photodetail.alpha=1.0;
     
    
    
    
    
    //navigation barの色を変更する
    //self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    //バナーオブジェクトの生成
//    _adView=[[ADBannerView alloc]initWithFrame:CGRectMake(0, -_adView.frame.size.height,_adView.frame.size.width,_adView.frame.size.height)];
//    //delegateメゾットhに書くことによって使用可能になる
//    _adView.delegate=self;
//    
//    [self.view addSubview:_adView];
//    //表示をさせるコード。部品を追加するイメージ
//    _adView.alpha=0.0;
//    //最初はバナーが表示されてないのでno
//    _isVisible= NO;
    
    
    
    
    
    
}

//dictionaryの自作メソッド
-(void)CreateDetailDictionary{
//説明の追加のメソッド
    _DetailDictionary = @{@"1-1":@"アンコールワット・バイヨン",@"1-2":@"アンコール遺跡・プリヤ・カーン寺院",@"1-3":@"アンコール遺跡・バイヨン",@"1-4":@"上座部仏教・僧侶",@"1-5":@"アンコール遺跡群",@"1-6":@"アンコールワット遺跡",@"1-7":@"アンコールワット遺跡全景",@"1-8":@"夕日に照らされるアンコールワット",@"1-9":@"アンコール遺跡・僧侶",
                          @"2-1":@"エルサレムと絨毯",@"2-2":@"マサダ",@"2-3":@"香料の道、ネゲウ砂漠都市",@"2-4":@"エルサレム旧市街",@"2-5":@"テルアビブの白い都市",@"2-6":@"エルサレム旧市街の店の店主",@"2-7":@"エルサレム旧市街",@"2-8":@"エルサレム旧市街の壁",@"2-9":@"エルサレムの人々",
                          @"3-1":@"ポトシ",@"3-2":@"ウユニ塩湖と旅人",@"3-3":@"ポトシの町並み",@"3-4":@"ラパスの女性",@"3-5":@"ラパスの人々",@"3-6":@"ウユニ塩湖",@"3-7":@"ウユニ塩湖",@"3-8":@"塩のホテル",@"3-9":@"ポトシの鉱山の男",
                          @"4-1":@"ルーブル美術館",@"4-2":@"モンサンミッシェル修道院",@"4-3":@"ランス郊外のブドウ畑",@"4-4":@"セーヌ河に架かる橋",@"4-5":@"リヨン歴史地区",@"4-6":@"ピレネー山脈",@"4-7":@"パリの風景",@"4-8":@"凱旋門",@"4-9":@"ヴェルサイユ宮殿",
                          @"5-1":@"カプリ島",@"5-2":@"ローマ歴史地区",@"5-3":@"宮殿のカメラマン",@"5-4":@"ヴェローナ市の菓子屋",@"5-5":@"アマルフィの海岸",@"5-6":@"フィレンツェの旧市街",@"5-7":@"ドロミーティの風景",@"5-8":@"郊外の草原",@"5-9":@"ヴェネツィアとその湾",
                          @"6-1":@"ウニコのマリメッコ",@"6-2":@"極寒のフィンランド",@"6-3":@"シュトルーヴェの三角アーチ",@"6-4":@"ラウマ旧市街",@"6-5":@"ヴェルラ砕木・板紙工場",@"6-6":@"スオメンリンナの要塞",@"6-7":@"スオメンリンナの要塞",@"6-8":@"スオメンリンナの要塞",@"6-9":@"ヴェルラ砕木・板紙工場",
                          @"7-1":@"恐竜州立自然公園",@"7-2":@"カナダと言えばカヌー",@"7-3":@"ケベック旧市街",@"7-4":@"ケベック旧市街のクリスマスの夜",@"7-5":@"ナイアガラの滝",@"7-6":@"ケベック旧市街歴史地区",@"7-7":@"カナディアン・ロッキー山脈自然公園",@"7-8":@"パンフ国立公園を走る列車",@"7-9":@"恐竜州立自然公園",
                          @"8-1":@"タスマニア",@"8-2":@"コアラ",@"8-3":@"ザ・ナット、タスマニアの北西部",@"8-4":@"ウィートサンデー諸島ホワイトへブンビーチ",@"8-5":@"エアーズロック",@"8-6":@"グレートバリアリーフ",@"8-7":@"鮮やかな海辺の灯台",@"8-8":@"チューリップと羊",@"8-9":@"ブルーニー島",
                          @"9-1":@"カサミラ・アントニガウディの作品",@"9-2":@"カサ・バトリョ、アントニ・ガウディの作品",@"9-3":@"アルハンブラ宮殿",@"9-4":@"１３世紀のデザイン",@"9-5":@"アントニ・ガウディの作品、グエル公園",@"9-6":@"アルハンブラ宮殿",@"9-7":@"アントニ・ガウディの作品、サクラダ・ファミリア",@"9-8":@"イビサ島",@"9-9":@"アントニ・ガウディの作品、グエル公園",
                          @"10-1":@"カイラーサナータ寺院",@"10-2":@"タージマハル",@"10-3":@"セイラーサナータ寺院",@"10-4":@"バラナシの人々",@"10-5":@"ダージリンの風景",@"10-6":@"ダージリンの茶畑",@"10-7":@"王道",@"10-8":@"バラナシ",@"10-9":@"バラナシの日常",
                          @"11-1":@"イスタンブール歴史地区",@"11-2":@"スレイマニエ・モスク",@"11-3":@"イスタンブールのランプ屋",@"11-4":@"イスタンブールのスパイス屋",@"11-5":@"髪の毛の美術館",@"11-6":@"スルタンアフメトモスク",@"11-7":@"トルコの気球",@"11-8":@"地下宮殿の内部",@"11-9":@"カッパドキア、奇岩の風景",
                          @"12-1":@"クスコ市街とリャマ",@"12-2":@"マチュピチュ歴史保古地区",@"12-3":@"クスコ市街の人々",@"12-4":@"クスコ市街の人々",@"12-5":@"クスコ市街の人々",@"12-6":@"ワスカラン国立公園",@"12-7":@"マチュピチュ",@"12-8":@"ナスカとフマナ平原の地上絵",@"12-9":@"ワスカラン国立公園",
                          @"13-1":@"緑一色の五花海の風景",@"13-2":@"黄龍の風景",@"13-3":@"万里の長城",@"13-4":@"麗江旧市街",@"13-5":@"麗江旧市街",@"13-6":@"九寨溝の渓谷",@"13-7":@"冬の九寨溝の渓谷",@"13-8":@"九寨溝の渓谷",@"13-9":@"秦の始皇陵",
                          @"14-1":@"ランゲル鳥保護区の自然",@"14-2":@"レナ石柱自然公園",@"14-3":@"カムチャッカ火山群",@"14-4":@"カムチャッカ火山群",@"14-5":@"バイカル湖",@"14-6":@"バイカル湖",@"14-7":@"サンクトペテルプルグ歴史地区",@"14-8":@"ウヴス・ヌール盆地",@"14-9":@"レナ石柱自然公園",
                          @"15-1":@"ロベン島",@"15-2":@"イシマンガリソ湿地公園",@"15-3":@"ロベン島",@"15-4":@"ケープ植物自然公園",@"15-5":@"イシマンガリソ湿地公園",@"15-6":@"イシマガソリン湿地公園",@"15-7":@"リフタスフェルとの文化と自然",@"15-8":@"ドラケンスベアク自然公園",@"15-9":@"ケープ植物自然公園",
                          @"16-1":@"リオ・デ・ジャネイロ",@"16-2":@"レンソイス・マラニャンセス国立公園",@"16-3":@"リオ・デ・ジャネイロ",@"16-4":@"オオハシ、イグアス国立公園",@"16-5":@"夕日のイグアスの滝",@"16-6":@"リオ・デ・ジャネイロ",@"16-7":@"レンソイス・マラニャンセス国立公園",@"16-8":@"デイアマンティー歴史地区",@"16-9":@"パンタナル保全地区",
                          @"17-1":@"イエローストーン国立公園",@"17-2":@"アンテローブキャニオン国立公園",@"17-3":@"イエローストーン国立公園",@"17-4":@"グランドキャニオン国立公園",@"17-5":@"グランドキャニオン国立公園",@"17-6":@"自由の女神",@"17-7":@"イエローストーン国立公園",@"17-8":@"グランドキャニオン国立公園",@"17-9":@"アンテローブキャニオン国立公園",
                          @"18-1":@"屋久島・白谷雲水郷",@"18-2":@"兵庫県・姫路城",@"18-3":@"小笠原諸島",@"18-4":@"北海道・知床",@"18-5":@"京都",@"18-6":@"富士山",@"18-7":@"長野県・美ヶ原高原",@"18-8":@"京都・竜安寺の鹿威し",@"18-9":@"日本酒と塩",
                           @"19-1":@"古代グアナフアト",@"19-2":@"古代都市ウシュマル",@"19-3":@"リュウゼツラン、テキーラの原料",@"19-4":@"チチェン・イッツァ、マヤ文明",@"19-5":@"メキシコシティー歴史地区",@"19-6":@"マヤ文明の暦のカレンダー",@"19-7":@"メキシコシティー歴史地区",@"19-8":@"古都グアナフアトとその銀鉱群",@"19-9":@"リュウゼツラン、テキーラの原料",
                          @"20-1":@"ナイロビにて生息",@"20-2":@"ラム旧市街",@"20-3":@"モンバサのジーザス砦",@"20-4":@"ケニアの装飾",@"20-5":@"ケニア、シロテテナガザル",@"20-6":@"ケニアの女性",@"20-7":@"グレート・リフトバレー湖沼地域",@"20-8":@"トゥルカナ湖国立公園",@"20-9":@"ケニア山国立公園",
                          @"21-1":@"フィリピンのバス、ジプニー",@"21-2":@"バワラン島、プエルト・プリンセサ地下川国立公園",@"21-3":@"フィリピン特産",@"21-4":@"ボホール島、チョコレートヒル",@"21-5":@"世界最小の猿、メガネザル・ターシャ",@"21-6":@"コルディリューラの棚田群",@"21-7":@"コルディリューラの棚田群",@"21-8":@"ドゥバタハ国立公園",@"21-9":@"バオサイ、サン・アグスチン教会",
                          @"22-1":@"カトマンズ盆地",@"22-2":@"エベレスト・トレッキング",@"22-3":@"スワヤンブナートの巨大ストゥーバ",@"22-4":@"サドゥ達",@"22-5":@"カトマンズ盆地の市街地",@"22-6":@"エベレスト・トレッキング",@"22-7":@"サガルマータ国立公園",@"22-8":@"仏陀の生誕地ルンビニ",@"22-9":@"カトマンズ盆地",
                          @"23-1":@"ジパーム城壁都市",@"23-2":@"スパイス屋",@"23-3":@"ソコトラ諸島・トゲワシ",@"23-4":@"ソコトラ諸島",@"23-5":@"サヌア旧市街",@"23-6":@"イエメンの女性",@"23-7":@"サヌア旧市街",@"23-8":@"夜のサヌア旧市街",@"23-9":@"ソコトラ諸島",
                          @"24-1":@"マナ・プールズ国立公園",@"24-2":@"ヴィクトリアの滝を上空から",@"24-3":@"マトボの丘群",@"24-4":@"カミ遺跡群国立公園",@"24-5":@"マナ・プールズ国立公園",@"24-6":@"マトボの丘群",@"24-7":@"ヴィクトリアの滝",@"24-8":@"ヴィクトリアの滝",@"24-9":@"マトボの丘群",
                          @"25-1":@"スネアーズ諸島",@"25-2":@"モルドールのデード",@"25-3":@"フォックス氷河",@"25-4":@"フォックス氷河",@"25-5":@"マウントクック",@"25-6":@"クレーター湖",@"25-7":@"エメラルド湖",@"25-8":@"マウントクック国立公園",@"25-9":@"炭酸温泉シャンパンプール",
                          @"26-1":@"アンデス越えの道", @"26-2":@"アルパカ", @"26-3":@"アンデス越えの道", @"26-4":@"アルゼンチンの社交場", @"26-5":@"アルゼンチンの民族", @"26-6":@"ウブサラ氷河", @"26-7":@"競走馬", @"26-8":@"ペリト・モレロ氷河", @"26-9":@"ロス・グラシアレス氷河",
                          @"27-1":@"アムラ城内部",@"27-2":@"ワディラム保護区",@"27-3":@"ペトラ遺跡にて",@"27-4":@"ペトラ遺跡",@"27-5":@"ペトラ遺跡",@"27-6":@"ペトラ遺跡",@"27-7":@"ウルエル・ラサス",@"27-8":@"ワディラム保護区",@"27-9":@"アムラ城",
                          @"28-1":@"ハーン・ハリーリ市場",@"28-2":@"テーベ・カルナック神殿",@"28-3":@"ツタンカーメン・エジプト考古学博物舘",@"28-4":@"カイロの風景",@"28-5":@"ピラミッド",@"28-6":@"ハトシェプスト女王葬祭殿",@"28-7":@"古代都市テーベとその墓地遺跡",@"28-8":@"ハトシェプスト女王葬祭殿",@"28-9":@"死者の町",
                          @"29-1":@"サンガイ国立公園",@"29-2":@"サンタ・アナ・デ・ロス・リオス・クエンカ",@"29-3":@"ガラパゴス諸島",@"29-4":@"ガラパゴス諸島",@"29-5":@"織物屋の店主",@"29-6":@"ガラパゴス諸島",@"29-7":@"サンガイ国立公園",@"29-8":@"ガラパゴス諸島",@"29-9":@"ガラパゴス諸島",
                          @"30-1":@"モルディブ諸島の全景",@"30-2":@"モルディブ",@"30-3":@"海上ホテル",@"30-4":@"モルディブ諸島",@"30-5":@"モルディブのビーチ",@"30-6":@"モルディブの全景",@"30-7":@"夕日のモルディブ諸島",@"30-8":@"モルディブ諸島の海",@"30-9":@"モルディブ諸島",
                          @"31-1":@"ドン・パヤーイェン‐カオ・ヤイ森林群",@"31-2":@"古代都市アユタヤ", @"31-3":@"古代都市アユタヤ", @"31-4":@"ドン・パヤーイェン‐カオ・ヤイ森林群", @"31-5":@"古代都市スコタイ、ワット・シーチェム", @"31-6":@"古代都市アユタヤ", @"31-7":@"古代都市スコタイ" ,@"31-8":@"ドン・パヤーイェン‐カオ・ヤイ森林群" ,@"31-9":@"ドン・パヤーイェン‐カオ・ヤイ森林群",
                          @"32-1":@"ハロン湾",@"32-2":@"ハロン湾",@"32-3":@"フォンニャ-ケバン国立公園",@"32-4":@"",@"32-5":@"フエの建造物",@"32-6":@"フォンニャ-ケバン国立公園",@"32-7":@"フエの建造物",@"32-8":@"フォンニャ-ケバン国立公園",@"32-9":@"フエの建造物の鯉",};
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    }


- (IBAction)ShareBtn:(id)sender {
    
    //宣言
    UIImage *shareImage;
    //箱詰め
    shareImage=[self screenshotWithView:self.PhotoView];
    //ActivityViewに渡す情報を配列に格納
    NSArray *actItems =@[shareImage];
    //ActivityViewの生成
    UIActivityViewController *activityView = [[UIActivityViewController alloc] initWithActivityItems:actItems applicationActivities:nil];
    //modal処理でActivityViewを表示
    [self presentViewController:activityView animated:YES completion:nil];
}

//スクリーンショットを取る
- (UIImage *)screenshotWithView:(UIView *)shareView
{
    CGSize imageSize = [shareView bounds].size;
    if (NULL != UIGraphicsBeginImageContextWithOptions)
        UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0);
    else
        UIGraphicsBeginImageContext(imageSize);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGContextTranslateCTM(context, [shareView center].x, [shareView center].y);
    CGContextConcatCTM(context, [shareView transform]);
    CGContextTranslateCTM(context,
                          -[shareView bounds].size.width * [[shareView layer] anchorPoint].x - shareView.frame.origin.x,
                          -[shareView bounds].size.height * [[shareView layer] anchorPoint].y - shareView.frame.origin.y);
    
    [[shareView layer] renderInContext:context];
    
    CGContextRestoreGState(context);
    
    // Retrieve the screenshot image
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();

    
    return image;

}
//ズームイベントの実装
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    //拡大したいimageを設定
 
    return Photodetail;
}

//広告バナーに関するメソッド
//-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
//    if (!_isVisible) {
//        //バナーが表示されるアニメーション
//        [UIView beginAnimations:@"animationAdBannerOn" context:nil];
//        
//        [UIView setAnimationDuration:0.3];
//        //animationの表示される時間０．３秒
//        banner.frame= CGRectOffset(banner.frame, 0, self.view.frame.size.height-self.view.frame.size.height/11.5);
//        banner.alpha=1.0;
//        [UIView commitAnimations];
//        
//        _isVisible=YES;
//        
//    }
///**
// * ScrollViewが拡大縮小されるたびに呼び出される
// */
//- (void)scrollViewDidZoom:(UIScrollView *)scrollView
//{
//    [self updateImageCenter];
//}
//
///**
// * ScrollViewの拡大縮小終了時に呼び出される
// */
//- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView
//                       withView:(UIView *)view
//                        atScale:(CGFloat)scale
//{
//    [self updateImageCenter];
//}
//
///**
// * 拡大縮小された画像のサイズに合わせて中央座標を変更する
// */
//- (void)updateImageCenter
//{
//    // 画像の表示サイズを取得
//    CGSize imageSize = self.Photodetail.image.size;
//    imageSize.width *= self.ScrollView.zoomScale;
//    imageSize.height *= self.ScrollView.zoomScale;
//    
//    // サブスクロールビューのサイズを取得
//    CGRect  bounds = self.ScrollView.bounds;
//    
//    // イメージビューの中央の座標を計算
//    CGPoint point;
//    point.x = imageSize.width / 2;
//    if (imageSize.width < bounds.size.width) {
//        point.x += (bounds.size.width - imageSize.width) / 2;
//    }
//    point.y = imageSize.height / 2;
//    if (imageSize.height < bounds.size.height) {
//        point.y += (bounds.size.height - imageSize.height) / 2;
//    }
//    self.Photodetail.center = point;
//}


@end
