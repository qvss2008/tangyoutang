//
//  personDetilTableViewController.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZSSpersonDetilTableViewController.h"

@interface YZSSpersonDetilTableViewController ()

@end

@implementation YZSSpersonDetilTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"个人信息";
    [self setUpHeadView];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
//设置TableView头
- (void)setUpHeadView
{
    UIView *heardView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 150)];
    heardView.backgroundColor = [UIColor purpleColor];
    
    self.tableView.tableHeaderView = heardView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 5;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 8;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"个人列表";
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"reuseIdentifier"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    }
    if (indexPath.section == 0 && indexPath.row== 0) {
        cell.textLabel.text = @"姓名";
    }
    if (indexPath.section == 0 && indexPath.row== 1) {
        cell.textLabel.text = @"性别";
    }
    if (indexPath.section == 0 && indexPath.row== 2) {
        cell.textLabel.text = @"生日";
    }
    if (indexPath.section == 0 && indexPath.row== 3) {
        cell.textLabel.text = @"身高";
    }
    if (indexPath.section == 0 && indexPath.row== 4) {
        cell.textLabel.text = @"体重";
    }
    if (indexPath.section == 0 && indexPath.row== 5) {
        cell.textLabel.text = @"腰围";
    }
    if (indexPath.section == 0 && indexPath.row== 6) {
        cell.textLabel.text = @"臀围";
    }
    if (indexPath.section == 0 && indexPath.row== 7) {
        cell.textLabel.text = @"糖尿病类型";
    }
    
    if (indexPath.section == 1 && indexPath.row== 0) {
        cell.textLabel.text = @"姓名";
    }
    if (indexPath.section == 1 && indexPath.row== 1) {
        cell.textLabel.text = @"性别";
    }
    if (indexPath.section == 1 && indexPath.row== 2) {
        cell.textLabel.text = @"生日";
    }
    if (indexPath.section == 1 && indexPath.row== 3) {
        cell.textLabel.text = @"身高";
    }
    if (indexPath.section == 1 && indexPath.row== 4) {
        cell.textLabel.text = @"体重";
    }
    if (indexPath.section == 1 && indexPath.row== 5) {
        cell.textLabel.text = @"腰围";
    }
    if (indexPath.section == 1 && indexPath.row== 6) {
        cell.textLabel.text = @"臀围";
    }
    if (indexPath.section == 1 && indexPath.row== 7) {
        cell.textLabel.text = @"糖尿病类型";
    }
    
    if (indexPath.section == 2 && indexPath.row== 0) {
        cell.textLabel.text = @"姓名";
    }
    if (indexPath.section == 2 && indexPath.row== 1) {
        cell.textLabel.text = @"性别";
    }
    if (indexPath.section == 2 && indexPath.row== 2) {
        cell.textLabel.text = @"生日";
    }
    if (indexPath.section == 2 && indexPath.row== 3) {
        cell.textLabel.text = @"身高";
    }
    if (indexPath.section == 2 && indexPath.row== 4) {
        cell.textLabel.text = @"体重";
    }
    if (indexPath.section == 2 && indexPath.row== 5) {
        cell.textLabel.text = @"腰围";
    }
    if (indexPath.section == 2 && indexPath.row== 6) {
        cell.textLabel.text = @"臀围";
    }
    if (indexPath.section == 2 && indexPath.row== 7) {
        cell.textLabel.text = @"糖尿病类型";
    }
    
    if (indexPath.section == 3 && indexPath.row== 0) {
        cell.textLabel.text = @"姓名";
    }
    if (indexPath.section == 3 && indexPath.row== 1) {
        cell.textLabel.text = @"性别";
    }
    if (indexPath.section == 3 && indexPath.row== 2) {
        cell.textLabel.text = @"生日";
    }
    if (indexPath.section == 3 && indexPath.row== 3) {
        cell.textLabel.text = @"身高";
    }
    if (indexPath.section == 3 && indexPath.row== 4) {
        cell.textLabel.text = @"体重";
    }
    if (indexPath.section == 3 && indexPath.row== 5) {
        cell.textLabel.text = @"腰围";
    }
    if (indexPath.section == 3 && indexPath.row== 6) {
        cell.textLabel.text = @"臀围";
    }
    if (indexPath.section == 3 && indexPath.row== 7) {
        cell.textLabel.text = @"糖尿病类型";
    }
    
    // Configure the cell...
    
    return cell;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
