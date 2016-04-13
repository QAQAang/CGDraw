//
//  Arrow.m
//  drawRadar
//
//  Created by dllo on 16/3/31.
//  Copyright © 2016年 dllo. All rights reserved.
//

#import "Arrow.h"

@implementation Arrow

- (void)drawRect:(CGRect)rect{
    UIBezierPath *arrow = [UIBezierPath bezierPath];
    [arrow moveToPoint:CGPointMake(rect.size.width / 2 - 2, sqrt(12))];
    [arrow addLineToPoint:CGPointMake(rect.size.width / 2, 0)];
    [arrow addLineToPoint:CGPointMake(rect.size.width / 2 + 2, sqrt(12))];
    [arrow closePath];
    arrow.lineWidth = 1;
    [[UIColor whiteColor] setStroke];
    [[UIColor whiteColor] setFill];
    [arrow fill];
    [arrow stroke];
}

@end
