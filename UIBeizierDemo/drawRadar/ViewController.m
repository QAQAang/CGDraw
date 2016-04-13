//
//  ViewController.m
//  drawRadar
//
//  Created by dllo on 16/3/22.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "ViewController.h"
#import "Radar.h"
#import "Arrow.h"
#import "DrawCircle.h"
#import "DMGRateView.h"
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) CAGradientLayer *gradientLayer;

@property (nonatomic, retain) DrawCircle *circle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    Arrow *arrow = [[Arrow alloc] initWithFrame:CGRectMake(100, 200, 100, 200)];
//    arrow.backgroundColor = [UIColor blackColor];
//    [self.view addSubview:arrow];
//    Radar *radar = [[Radar alloc] initWithCenter:self.view.center Parameter:ParameterMake(10, 45, 43, 78, 80, 50) Width:80 FigureCount:6 MaxParmeter:80];
//    Radar *radar = [[Radar alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    radar.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:radar];
//    UIWebView *web = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    [web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://api.lolmax.com/api/player/power_value_web/?area_id=9&uid=%E9%80%81%E6%AD%BB%E8%AF%B7%E6%8E%92%E9%98%9F&pkey=MTQ1ODg3NzY0Mi42MTU5NDE4OTg4ODBfMXV6Z3drb251dW1pcHJtc3M__&phone_num=15941898880&imei=355021060246177&os_type=Android&os_version=5.0&version=3.2.0"]]];
//    [self.view addSubview:web];
//    self.circle = [[DrawCircle alloc] initWithFrame:CGRectMake(0, 0, 0, 0) Rate:0 CenterText:@"中心文本" ButtomText:@"底端文本"];
//    self.circle.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:self.circle];
////    self.circle.rate = 0.5;
//    self.circle.frame = CGRectMake(0, 0, 300, 300);
//    self.circle.center = self.view.center;
//    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(self.view.center.x - 150, 50, 300, 30)];
//    [slider addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
//    slider.minimumValue = 0;
//    slider.maximumValue = 1;
//    [self.view addSubview:slider];

//     190 237   241 238
//    202 87 204
//    255 132 160
//    DMGRateView *dmg = [[DMGRateView alloc] initWithFrame:CGRectMake(0, 0, 300, 50) DMGRate:0.6 StarColor:[UIColor colorWithRed:0 green:190.f / 255.f blue:237.f / 255.f alpha:1] EndColor:[UIColor colorWithRed:0 green:241.f / 255.f blue:238.f / 255.f alpha:1]];
//    DMGRateView *dmg = [[DMGRateView alloc] initWithFrame:CGRectMake(0, 0, 300, 50) DMGRate:0.6 StarColor:[UIColor colorWithRed:202 green:79.f / 255.f blue:214.f / 255.f alpha:1] EndColor:[UIColor colorWithRed:255.f / 255.f green:132.f / 255.f blue:160.f / 255.f alpha:1]];
//    dmg.center = self.view.center;
//    [self.view addSubview:dmg];

}

- (void)changeValue:(UISlider *)sender{
    self.circle.rate = sender.value;
    [self.circle setNeedsDisplay];
    NSLog(@"%lf, %lf", sender.value, self.circle.rate);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
