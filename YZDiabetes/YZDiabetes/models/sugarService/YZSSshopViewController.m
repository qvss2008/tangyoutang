//
//  shopViewController.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZSSshopViewController.h"
#import "YZSSshopCell.h"
#import "YZSSgoodsDetilViewController.h"
@interface YZSSshopViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation YZSSshopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"糖友商城";
    [self setTableView];
    // Do any additional setup after loading the view.
}
//设置TableView
- (void)setTableView
{
    UITableView *tabView = [[UITableView alloc] initWithFrame:self.view.bounds];
    tabView.delegate = self;
    tabView.dataSource = self;
    [self.view addSubview:tabView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark setTableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}

 - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    YZSSshopCell * cell = [YZSSshopCell shopWithTableiew:tableView];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    YZSSgoodsDetilViewController *goodsDetilVC = [[YZSSgoodsDetilViewController alloc]init];
    [self.navigationController pushViewController:goodsDetilVC animated:YES];
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
