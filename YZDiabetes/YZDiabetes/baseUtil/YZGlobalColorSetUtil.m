//
//  YZGlobalColorSetUtil.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZGlobalColorSetUtil.h"
#import <UIKit/UIKit.h>

@implementation YZGlobalColorSetUtil
+ (instancetype)shareInstance{
    static YZGlobalColorSetUtil *shareInstance = nil;
    static dispatch_once_t onceToken ;
    dispatch_once(&onceToken, ^{
        shareInstance = [[YZGlobalColorSetUtil alloc] init];
        [shareInstance setNavigationBarColor];
        [shareInstance setTabBarColor];
    });
    return shareInstance;
}

-(void)setNavigationBarColor{
    [[UINavigationBar appearance] setBarTintColor:BAR_TINT_COLOR];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys:
    [UIColor whiteColor], NSForegroundColorAttributeName,
    nil, NSShadowAttributeName, nil, NSFontAttributeName, nil]];
}
-(void)setTabBarColor{
    [[UITabBar appearance] setBarTintColor:BAR_TINT_COLOR];
    [[UITabBar appearance] setSelectedImageTintColor:[UIColor whiteColor]];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], UITextAttributeTextColor, nil] forState:UIControlStateSelected];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:60.0/255.0 green:60.0/255.0 blue:60.0/255.0 alpha:1.0], UITextAttributeTextColor, nil] forState:UIControlStateNormal];
    
}

@end
