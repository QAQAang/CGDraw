//
//  DrawCircle.h
//  drawRadar
//
//  Created by dllo on 16/4/7.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawCircle : UIView

@property (nonatomic, assign) CGFloat rate;

- (instancetype)initWithFrame:(CGRect)frame Rate:(CGFloat)rate CenterText:(NSString *)centerText ButtomText:(NSString *)buttomText;

@end
