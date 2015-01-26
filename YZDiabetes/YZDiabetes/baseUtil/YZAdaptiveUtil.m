//
//  YZAdaptiveUtil.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZAdaptiveUtil.h"

@implementation YZAdaptiveUtil
+ (CGRect)labelAdaptiveByText:(NSString *)string andFont:(UIFont *)font{
    UILabel *label = [[UILabel alloc] init];
    label.text = string;
    label.numberOfLines = 0;
    label.font = font;
    CGRect bounds = CGRectMake(0, 0, 320, 9999999.99);
    bounds = [label textRectForBounds:bounds limitedToNumberOfLines:0];
    return bounds;
}
@end
