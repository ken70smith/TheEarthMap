//
//  ViewController.m
//  TheEarthMap
//
//  Created by Ken Harada on 2014/09/07.
//  Copyright (c) 2014年 Ken Harada. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIButton *_menuButton;
    ADBannerView *_adView;
    BOOL _isVisible;
    //バナーを出すよ。上がバナー広告の変数。下は正しく出されているかを判別
    

}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    MKMapView *mapView =[[MKMapView alloc]init];
    mapView.delegate=self;
    //mapオブジェクトを生成
    //(x,y,幅、高さ)
    mapView.frame=CGRectMake(0,0,320,self.view.bounds.size.height);
    
    //0,20,540,460初期値
    //大きさ位置を決定
    
    CLLocationCoordinate2D co;
    //表示位置を設定
    
    MKCoordinateRegion cr =mapView.region;
    cr.span.latitudeDelta=130.0;
    cr.center=co;
    [mapView setRegion:cr];
    //縮尺を決定
    mapView.mapType=MKMapTypeStandard;
    //MKMapTypeHybrid...上空写真＋国名
    //MKMapTypeSatellite...上空写真
    //地図の種類を設定
    
    _menuButton=[[UIButton alloc] initWithFrame:CGRectMake(30,40, 40, 20)];
    [_menuButton setTitleColor:[UIColor colorWithRed:0.492157 green:0.760784 blue:0.52941 alpha:1.0] forState:UIControlStateNormal];
    [_menuButton setTitle:@"Tap" forState:UIControlStateNormal];
    [_menuButton addTarget:self action:@selector(tapBtn:) forControlEvents:UIControlEventTouchUpInside];
    [mapView addSubview:_menuButton];
    
    
    
    //画像を円形にトリミング
//    UIImage *circleImage = [UIImage imageNamed:@"1-1.jpg"];
//    self.CirclePhoto.image = circleImage;
//    if (circleImage.size.width != circleImage.size.height) {
//        CGFloat smallerSideLength = (circleImage.size.width < circleImage.size.height) ? circleImage.size.width : circleImage.size.height;
//        self.CirclePhoto.frame = CGRectMake((circleImage.size.width - smallerSideLength) * 0.5f,
//                                           (circleImage.size.height - smallerSideLength) * 0.5f,
//                                           circleImage.size.width, circleImage.size.height);
//    } else {
//        self.CirclePhoto.frame = CGRectMake(0.0f, 0.0f, circleImage.size.width, circleImage.size.height);
//    }
//    self.CirclePhoto.layer.cornerRadius = self.CirclePhoto.frame.size.width * 0.5f;
//    self.CirclePhoto.clipsToBounds = YES;
//    //[self addSubview:circleImageView];
//    [mapView addSubview:self.CirclePhoto];
    
    
    //navigationの上の白いバーを消す
    self.navigationController.navigationBarHidden=YES;

    
    //表示するためのViewに追加
    [self.view addSubview:mapView];
    
    
    
    
    
    
    //マップの名前を英語表記にする。英語がわからない人のためにサブタイトルを日本語表記にする。
    
    MKPointAnnotation *pin =[self createdPin:CLLocationCoordinate2DMake(11.544873,104.892167) title:@"カンボジア"];
    [mapView addAnnotation:pin];
    
    MKPointAnnotation *pin2=[self createdPin:CLLocationCoordinate2DMake(31.768319,35.21371) title:@"イスラエル"];
    
    [mapView addAnnotation:pin2];
    
    MKPointAnnotation *pin3 =[self createdPin:CLLocationCoordinate2DMake(-16.5,-68.15) title:@"ボリビア"];
    [mapView addAnnotation:pin3];
    
    MKPointAnnotation *pin4 =[self createdPin:CLLocationCoordinate2DMake(48.856614,2.352222) title:@"フランス"];

    [mapView addAnnotation:pin4];
    
    MKPointAnnotation *pin5 =[self createdPin:CLLocationCoordinate2DMake(41.872389,12.48018) title:@"イタリア"];
    [mapView addAnnotation:pin5];
    
    
    MKPointAnnotation *pin6 =[self createdPin:CLLocationCoordinate2DMake(60.173324,24.941025) title:@"フィンランド"];
   
    [mapView addAnnotation:pin6];
    
    MKPointAnnotation *pin7 =[self createdPin:CLLocationCoordinate2DMake(45.42153,-75.697193) title:@"カナダ"];
    [mapView addAnnotation:pin7];
    
    MKPointAnnotation *pin8 =[self createdPin:CLLocationCoordinate2DMake(-35.282,149.128684) title:@"オーストラリア"];
   
    [mapView addAnnotation:pin8];
    
    MKPointAnnotation *pin9 =[self createdPin:CLLocationCoordinate2DMake(40.416775,-3.70379) title:@"スペイン"];
    [mapView addAnnotation:pin9];
    
    MKPointAnnotation *pin10 =[self createdPin:CLLocationCoordinate2DMake(28.635308,77.22496) title:@"インド"];
   
    [mapView addAnnotation:pin10];
    
    MKPointAnnotation *pin11 =[self createdPin:CLLocationCoordinate2DMake(39.92077,32.85411) title:@"トルコ"];
    [mapView addAnnotation:pin11];
    
    MKPointAnnotation *pin12 =[self createdPin:CLLocationCoordinate2DMake(-12.046374,-77.042793) title:@"ペルー"];
    [mapView addAnnotation:pin12];
    
    MKPointAnnotation *pin13 =[self createdPin:CLLocationCoordinate2DMake(39.55,116.23) title:@"中国"];
    [mapView addAnnotation:pin13];
    
    MKPointAnnotation *pin14 =[self createdPin:CLLocationCoordinate2DMake(55.755826,37.6173) title:@"ロシア"];
    [mapView addAnnotation:pin14];
    //アメリカ、ラテンアメリカ、アフリカ
    MKPointAnnotation *pin19 =[self createdPin:CLLocationCoordinate2DMake(-33.924868,18.424055) title:@"南アフリカ"];
    [mapView addAnnotation:pin19];

    
    MKPointAnnotation *pin15=[self createdPin:CLLocationCoordinate2DMake(-15.794145,-47.882548) title:@"ブラジル"];
    [mapView addAnnotation:pin15];

    MKPointAnnotation *pin16 =[self createdPin:CLLocationCoordinate2DMake(38.907192,-77.036871) title:@"アメリカ"];
    [mapView addAnnotation:pin16];

    MKPointAnnotation *pin17 =[self createdPin:CLLocationCoordinate2DMake(35.689488,139.691706) title:@"日本"];
    [mapView addAnnotation:pin17];

    MKPointAnnotation *pin18=[self createdPin:CLLocationCoordinate2DMake(19.432608,-99.133208) title:@"メキシコ"];
    [mapView addAnnotation:pin18];

    MKPointAnnotation *pin20 =[self createdPin:CLLocationCoordinate2DMake(-1.292066,36.821946) title:@"ケニア"];
    [mapView addAnnotation:pin20];
    
    MKPointAnnotation *pin21 =[self createdPin:CLLocationCoordinate2DMake(14.599512,120.984219) title:@"フィリピン"];
    [mapView addAnnotation:pin21];
    
    MKPointAnnotation *pin22 =[self createdPin:CLLocationCoordinate2DMake(27.7,85.333333) title:@"ネパール"];
    [mapView addAnnotation:pin22];
    
    MKPointAnnotation *pin23 =[self createdPin:CLLocationCoordinate2DMake(15.369445,44.191007) title:@"イエメン"];
    [mapView addAnnotation:pin23];
    
    MKPointAnnotation *pin24 =[self createdPin:CLLocationCoordinate2DMake(-17.863889,31.029722) title:@"ジンバブエ"];
    [mapView addAnnotation:pin24];
    
    MKPointAnnotation *pin25 =[self createdPin:CLLocationCoordinate2DMake(-41.28646,174.776236) title:@"ニュージーランド"];
    [mapView addAnnotation:pin25];
    
    MKPointAnnotation *pin26 =[self createdPin:CLLocationCoordinate2DMake(-34.603723,-58.381593) title:@"アルゼンチン"];
    [mapView addAnnotation:pin26];
    
    MKPointAnnotation *pin27 =[self createdPin:CLLocationCoordinate2DMake(31.956578,35.945695) title:@"ヨルダン"];
    [mapView addAnnotation:pin27];
    
    MKPointAnnotation *pin28 =[self createdPin:CLLocationCoordinate2DMake(30.04442,31.235712) title:@"エジプト"];
    [mapView addAnnotation:pin28];
    
    MKPointAnnotation *pin29 =[self createdPin:CLLocationCoordinate2DMake(-0.180653,-78.467838) title:@"エクアドル"];
    [mapView addAnnotation:pin29];
    
    MKPointAnnotation *pin30 =[self createdPin:CLLocationCoordinate2DMake(4.175278,73.508889) title:@"モルディブ"];
    [mapView addAnnotation:pin30];
    
    MKPointAnnotation *pin31 =[self createdPin:CLLocationCoordinate2DMake(37.983917,23.72936) title:@"ギリシャ"];
    [mapView addAnnotation:pin31];
    
    MKPointAnnotation *pin32 =[self createdPin:CLLocationCoordinate2DMake(21.033333,105.85) title:@"ベトナム"];
    [mapView addAnnotation:pin32];
    MKPointAnnotation *pin33 =[self createdPin:CLLocationCoordinate2DMake(13.727896,100.524124) title:@"タイ"];
    [mapView addAnnotation:pin33];
    



    [self.view addSubview:mapView];
     //この意味なに
    
                             
    [mapView addAnnotation:pin];
    
    //バナーオブジェクトの生成
    _adView=[[ADBannerView alloc]initWithFrame:CGRectMake(0, -_adView.frame.size.height,_adView.frame.size.width,_adView.frame.size.height)];
    
    _adView.delegate=self;
    
    [self.view addSubview:_adView];
    //表示をさせるコード。部品を追加するイメージ
    _adView.alpha=0.0;
    //最初はバナーが表示されてないのでno
    _isVisible= NO;
}

// pinをたてる自作メソッド
-(MKPointAnnotation *)createdPin:(CLLocationCoordinate2D)co title:(NSString *)title {
    
   
        MKPointAnnotation *pin=[[MKPointAnnotation alloc]init];
        
        pin.coordinate=co;
        
        pin.title=title;
        
      // pin.subtitle= subtitle;もつけれるよ
    
    
    return pin;
    
	}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
    
    static NSString *pinIdentifier = @"PinAnnotationID";
    //ピン情報の再利用
    MKPinAnnotationView *pinView=(MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:pinIdentifier];
    
    if (pinView==nil) {
        //いろいろ設定できる
        
        //annotationの意味は注釈
        pinView=[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:pinIdentifier];
        
        pinView.animatesDrop=YES;
        //ピンが落ちてくるアニメーション
        
        //iボタンを押した時画面が反応する為のコード
        pinView.canShowCallout=YES;
        
        UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        pinView.rightCalloutAccessoryView = rightButton;
        
       pinView.rightCalloutAccessoryView=[UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        
    }
    return pinView;
}

-(void) mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control{
    //iボタンを押したときに動作を記述するメソッド
    NSLog(@"%@",view.annotation.title);
    //コンソールにどのボタンが押されたかを表示
    DetailViewController *DetailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    
    //名前と番号を照らし合わせるif文.もしカンボジアが押された時グローバル変数selectnumに〜番の番号を渡す
    if ([view.annotation.title isEqualToString:@"カンボジア"]) {
        DetailViewController.selectnum=1;

    }
    if ([view.annotation.title isEqualToString:@"イスラエル"]) {
        DetailViewController.selectnum=2;
    }
    if ([view.annotation.title isEqualToString:@"ボリビア"]) {
        DetailViewController.selectnum=3;
    }
    if ([view.annotation.title isEqualToString:@"フランス"]) {
        DetailViewController.selectnum=4;
    }
    
    if ([view.annotation.title isEqualToString:@"イタリア"]) {
        DetailViewController.selectnum=5;
    }
    if ([view.annotation.title isEqualToString:@"フィンランド"]) {
        DetailViewController.selectnum=6;
    }
    if ([view.annotation.title isEqualToString:@"カナダ"]) {
        DetailViewController.selectnum=7;
    }
    if ([view.annotation.title isEqualToString:@"オーストラリア"]) {
        DetailViewController.selectnum=8;
    }
    if ([view.annotation.title isEqualToString:@"スペイン"]) {
        DetailViewController.selectnum=9;
    }
    if ([view.annotation.title isEqualToString:@"インド"]) {
        DetailViewController.selectnum=10;
    }
    if ([view.annotation.title isEqualToString:@"トルコ"]) {
        DetailViewController.selectnum=11;
    }
    
    if ([view.annotation.title isEqualToString:@"ペルー"]) {
        DetailViewController.selectnum=12;
    }
    if ([view.annotation.title isEqualToString:@"中国"]) {
        DetailViewController.selectnum=13;
    }
    if ([view.annotation.title isEqualToString:@"ロシア"]) {
        DetailViewController.selectnum=14;
    }
    if ([view.annotation.title isEqualToString:@"南アフリカ"]) {
        DetailViewController.selectnum=15;
    }
    if ([view.annotation.title isEqualToString:@"ブラジル"]) {
        DetailViewController.selectnum=16;
    }
    if ([view.annotation.title isEqualToString:@"アメリカ"]) {
        DetailViewController.selectnum=17;
    }
    if ([view.annotation.title isEqualToString:@"日本"]) {
        DetailViewController.selectnum=18;
    }
    if ([view.annotation.title isEqualToString:@"メキシコ"]) {
        DetailViewController.selectnum=19;
    }

    if ([view.annotation.title isEqualToString:@"ケニア"]) {
        DetailViewController.selectnum=20;
    }
    if ([view.annotation.title isEqualToString:@"フィリピン"]) {
        DetailViewController.selectnum=21;
    }
    if ([view.annotation.title isEqualToString:@"ネパール"]) {
        DetailViewController.selectnum=22;
    }
    if ([view.annotation.title isEqualToString:@"イエメン"]) {
        DetailViewController.selectnum=23;
    }
    if ([view.annotation.title isEqualToString:@"ジンバブエ"]) {
        DetailViewController.selectnum=24;
    }
    if ([view.annotation.title isEqualToString:@"ニュージーランド"]) {
        DetailViewController.selectnum=25;
    }
    if ([view.annotation.title isEqualToString:@"アルゼンチン"]) {
        DetailViewController.selectnum=26;
    }
    if ([view.annotation.title isEqualToString:@"ヨルダン"]) {
        DetailViewController.selectnum=27;
    }
    if ([view.annotation.title isEqualToString:@"エジプト"]) {
        DetailViewController.selectnum=28;
    }
    if ([view.annotation.title isEqualToString:@"エクアドル"]) {
        DetailViewController.selectnum=29;
    }
    if ([view.annotation.title isEqualToString:@"モルディブ"]) {
        DetailViewController.selectnum=30;
    }
    if ([view.annotation.title isEqualToString:@"ギリシャ"]) {
        DetailViewController.selectnum=31;
    }
    if ([view.annotation.title isEqualToString:@"ベトナム"]) {
        DetailViewController.selectnum=32;
    }
    if ([view.annotation.title isEqualToString:@"タイ"]) {
        DetailViewController.selectnum=33;
        //写真の追加から
        
    }

    


    [[self navigationController]pushViewController:DetailViewController animated:YES];
    
    //この３行で１→２に画面遷移する
    

    

    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
    barButton.title = @"Country";
    self.navigationItem.backBarButtonItem = barButton;
    
}

-(void)viewWillAppear:(BOOL)animated{

    self.navigationController.navigationBarHidden=YES;

}

-(void)tapBtn:(UIButton *)menuButton_tmp
{
    NSLog(@"Tap");
    
    [self.menuContainerViewController toggleLeftSideMenuCompletion:nil];
    


}
//バナーが表示させる時発動するメソッド
-(void)bannerViewDidLoadAd:(ADBannerView *)banner{
    if (!_isVisible) {
        //バナーが表示されるアニメーション
        [UIView beginAnimations:@"animationAdBannerOn" context:nil];
        
        [UIView setAnimationDuration:0.3];
        //animationの表示される時間０．３秒
        banner.frame= CGRectOffset(banner.frame, 0, self.view.frame.size.height-self.view.frame.size.height/11.5);
        banner.alpha=1.0;
        [UIView commitAnimations];
        
        _isVisible=YES;
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
