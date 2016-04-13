//
//  DMGRateView.m
//  drawRadar
//
//  Created by dllo on 16/4/7.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "DMGRateView.h"

@implementation DMGRateView

- (instancetype)initWithFrame:(CGRect)frame DMGRate:(CGFloat)rate StarColor:(UIColor *)sColor EndColor:(UIColor *)ecolor LabelText:(NSString *)labelText{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:209.f / 255.f green:215.f / 255.f blue:219.f / 255.f alpha:0.7];
        UIView *colorView = [[UIView alloc] init];
        colorView.backgroundColor = [UIColor whiteColor];
        colorView.frame = CGRectMake(0, 0, self.frame.size.width * rate, self.frame.size.height);
        [self addSubview:colorView];
        CAGradientLayer *gradientLayer = [CAGradientLayer layer];
        gradientLayer.frame = colorView.frame;
            [colorView.layer addSublayer:gradientLayer];
        gradientLayer.startPoint = CGPointMake(0, 0);
        gradientLayer.endPoint = CGPointMake(1, 0);
        gradientLayer.colors = @[(__bridge id)sColor.CGColor,
                                          (__bridge id)ecolor.CGColor];
        gradientLayer.locations = @[@(0.25f) ,@(1.0f)];
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, self.frame.size.width, self.frame.size.height)];
        label.textColor = [UIColor whiteColor];
        label.text = labelText;
        label.font = [UIFont systemFontOfSize:14];
        [self addSubview:label];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//    
//}


@end
