//
//  YZMainTableViewController.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-24.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZMainTableViewController.h"
#import "YZSugarFriendDonViewController.h"
#import "YZSugarDataViewController.h"
#import "YZSugarRemindViewController.h"
#import "YZSugarServiceTableViewController.h"
@interface YZMainTableViewController ()

@end

@implementation YZMainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialize];
}
- (void)initialize
{
    YZSugarFriendDonViewController *sugarFriendController = [[YZSugarFriendDonViewController alloc] initWithStyle:UITableViewStylePlain];
    sugarFriendController.title = @"糖友堂";
    sugarFriendController.view.backgroundColor = [UIColor whiteColor];
    [sugarFriendController.tabBarItem setImage:[UIImage imageNamed:@"tab_TYT.png"]];
    UINavigationController *sfNav = [[UINavigationController alloc] initWithRootViewController:sugarFriendController];
    
    YZSugarDataViewController *sugarDataController = [[YZSugarDataViewController alloc]init];
    sugarDataController.title = @"数据";
    [sugarDataController.tabBarItem setImage:[UIImage imageNamed:@"tab_SJ.png"]];
    UINavigationController *sdNav = [[UINavigationController alloc]initWithRootViewController:sugarDataController];
    
//    YZSugarDataViewController *sugarDataController = [[YZSugarDataViewController alloc] initWithStyle:UITableViewStylePlain];
//    sugarDataController.title = @"数据";
//    [sugarDataController.tabBarItem setImage:[UIImage imageNamed:@"tab_SJ.png"]];
//    UINavigationController *sdNav = [[UINavigationController alloc] initWithRootViewController:sugarDataController];
    
    
    YZSugarRemindViewController *sugarRemindController = [[YZSugarRemindViewController alloc] initWithStyle:UITableViewStylePlain];
    sugarRemindController.title = @"提醒";
    [sugarRemindController.tabBarItem setImage:[UIImage imageNamed:@"tab_TX.png"]];
    UINavigationController *srNav = [[UINavigationController alloc] initWithRootViewController:sugarRemindController];
    
    
    YZSugarServiceTableViewController *sugarServiceController = [[YZSugarServiceTableViewController alloc] initWithStyle:UITableViewStylePlain];
    sugarServiceController.title = @"服务";
    [sugarServiceController.tabBarItem setImage:[UIImage imageNamed:@"tab_FU.png"]];
    sugarServiceController.view.backgroundColor = [UIColor whiteColor];
    UINavigationController *ssNav = [[UINavigationController alloc] initWithRootViewController:sugarServiceController];
    self.viewControllers = @[sfNav,sdNav,srNav,ssNav];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
