//
//  DrawCircle.m
//  drawRadar
//
//  Created by dllo on 16/4/7.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "DrawCircle.h"
@interface DrawCircle ()

@property (nonatomic, retain) UILabel *buttomLabel;

@property (nonatomic, retain) UILabel *centerLabel;

@end

@implementation DrawCircle

- (instancetype)initWithFrame:(CGRect)frame Rate:(CGFloat)rate CenterText:(NSString *)centerText ButtomText:(NSString *)buttomText{
    self = [super initWithFrame:frame];
    if (self) {
        self.rate = rate;
        [self creatLabelCenterText:centerText ButtomText:buttomText];
    }
    return self;
}

- (void)creatLabelCenterText:(NSString *)centerText ButtomText:(NSString *)buttomText{
    self.centerLabel = [[UILabel alloc] init];
    self.centerLabel.textAlignment = NSTextAlignmentCenter;
    self.centerLabel.text = centerText;
    
    [self addSubview:self.centerLabel];
    self.buttomLabel = [[UILabel alloc] init];
    self.buttomLabel.textAlignment = NSTextAlignmentCenter;
    self.buttomLabel.text = buttomText;
   
    [self addSubview:self.buttomLabel];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.centerLabel.frame = CGRectMake(0, 0, self.frame.size.width / 10 * 7, self.frame.size.width / 10 * 7 / 3 * 2);
    self.centerLabel.font = [UIFont systemFontOfSize:12 * self.frame.size.width / 10 * 2 / 15];
    self.centerLabel.center = CGPointMake(self.frame.size.width / 10 * 7 / 2 + self.frame.size.width / 10 * 3 / 2, self.frame.size.width / 10 * 7 / 2 + self.frame.size.width / 10 * 3 / 4);
    self.buttomLabel.frame = CGRectMake(0, 0, self.frame.size.width / 10 * 7, self.frame.size.width / 10 * 2);
    self.buttomLabel.center = CGPointMake(self.frame.size.width / 10 * 7 / 2 + self.frame.size.width / 10 * 3 / 2, self.frame.size.width / 10 * 9);
     self.buttomLabel.font = [UIFont systemFontOfSize:10 * self.frame.size.width / 10 * 2 / 15];
}

- (void)drawRect:(CGRect)rect{
    UIBezierPath *circle = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(self.frame.size.width / 10 * 3 / 2  , self.frame.size.width / 10 * 3 / 4, self.frame.size.width / 10 * 7, self.frame.size.width / 10 * 7)];
    circle.lineWidth = 1.5;
    [[UIColor colorWithRed:241.f / 255.f green:242.f / 255.f blue:243.f / 255.f alpha:0.8] setStroke];
    [circle stroke];
    CGPoint circleCenter = CGPointMake(self.frame.size.width / 10 * 7 / 2 + self.frame.size.width / 10 * 3 / 2, self.frame.size.width / 10 * 7 / 2 + self.frame.size.width / 10 * 3 / 4);
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:circleCenter radius:self.frame.size.width / 10 * 7 / 2 startAngle:3 * M_PI / 2 endAngle:3 * M_PI / 2 + 2 * M_PI * self.rate clockwise:YES];
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 1.5;
    [[UIColor colorWithRed:7.f / 255.f green:124.f / 255.f blue:209.f / 255.f alpha:1] setStroke];
    [path stroke];
}

@end
