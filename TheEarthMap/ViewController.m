//
//  ViewController.m
//  TheEarthMap
//
//  Created by Ken Harada on 2014/09/07.
//  Copyright (c) 2014年 Ken Harada. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    MKMapView *mapView =[[MKMapView alloc]init];
    mapView.delegate=self;
    //mapオブジェクトを生成
    
    mapView.frame=CGRectMake(0,20,320,460);
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
    
    [self.view addSubview:mapView];
    //表示するためのViewに追加
    
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
    
    MKPointAnnotation *pin12 =[self createdPin:CLLocationCoordinate2DMake(-0.180653,-78.467838) title:@"エクアドル"];
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
    
    MKPointAnnotation *pin22 =[self createdPin:CLLocationCoordinate2DMake(39.92077,32.85411) title:@"トルコ"];
    [mapView addAnnotation:pin22];
    
    MKPointAnnotation *pin23 =[self createdPin:CLLocationCoordinate2DMake(47.92,106.92) title:@"モンゴル"];
    [mapView addAnnotation:pin23];
    
    MKPointAnnotation *pin24 =[self createdPin:CLLocationCoordinate2DMake(36.752887,3.042048) title:@"アルジェリア"];
    [mapView addAnnotation:pin24];
    
    MKPointAnnotation *pin25 =[self createdPin:CLLocationCoordinate2DMake(5.55,-0.2) title:@"ガーナ"];
    [mapView addAnnotation:pin25];
    
    MKPointAnnotation *pin26 =[self createdPin:CLLocationCoordinate2DMake(-19.019585,-65.261962) title:@"ボリビア"];
    [mapView addAnnotation:pin26];



    
    

    
    
    [self.view addSubview:mapView];
     //この意味なに
    
                             
    [mapView addAnnotation:pin];
}

// pinをたてる自作メソッド
    -(MKPointAnnotation *)createdPin:(CLLocationCoordinate2D)co title:(NSString *)title {
        
   
        MKPointAnnotation *pin=[[MKPointAnnotation alloc]init];
        
        pin.coordinate=co;
        
        pin.title=title;
        
        return pin;
    
	}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
    
    static NSString *pinIdentifier = @"PinAnnotationID";
    //ピン情報の再利用
    MKPinAnnotationView *pinView=(MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:pinIdentifier];
    
    if (pinView==nil) {
        //いろいろ設定できる
        pinView=[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:pinIdentifier];
        pinView.animatesDrop=YES;
        //ピンが落ちてくるアニメーション
        
        //iボタンを押した時画面が反応する為のコード
        pinView.canShowCallout=YES;
        pinView.rightCalloutAccessoryView=[UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        
    }
    return pinView;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
