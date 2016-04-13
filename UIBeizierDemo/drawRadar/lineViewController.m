//
//  lineViewController.m
//  drawRadar
//
//  Created by dllo on 16/3/28.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "lineViewController.h"

@interface lineViewController ()

@end

@implementation lineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view = [[UIView alloc] init];
    [self.view addSubview:view];
    NSLog(@"%@", NSStringFromCGRect(view.frame));
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
