//
//  YZSugarRemindViewController.m
//  YZDiabetes
//
//  Created by ^_^晶洁 on 15-1-25.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZSugarRemindViewController.h"
#import "YZRemindCell.h"
#import "YZRemindWayCell.h"
@interface YZSugarRemindViewController () <YZRemindWayCellDelegate>

@property (nonatomic)YZRemindCell *medicineCell;
@property (nonatomic)YZRemindCell *foodCell;
@property (nonatomic)YZRemindCell *bloodCell;
@property (nonatomic)YZRemindWayCell *remindWayCell;

@end

@implementation YZSugarRemindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //只显示有内容的cell
    self.tableView.tableFooterView = [[UIView alloc]init];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    if (section == 0) {
        return 3;
    }
    return 1;
}

//返回每个cell的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

//返回tableView组头的高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 35;
}

//返回组名
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"提醒内容:";
    }
    return @"提醒方式:";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        switch (indexPath.row) {
            case 0:
                self.medicineCell = [tableView dequeueReusableCellWithIdentifier:@"medicineCell"];
                if (!self.medicineCell) {
                    self.medicineCell = [[YZRemindCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"medicineCell"];
                }
                [self.medicineCell.remindImgView setImage:[UIImage imageNamed:@"remind_yongyao.png"]];
                self.medicineCell.remindStrLab.text = @"服药提醒";
                self.medicineCell.remindTimeLab.text = @"上午:";
                self.medicineCell.remindSpecificTimeLab.text = @"11:55";
                self.medicineCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator
                ;
                
                return self.medicineCell;
                break;
            case 1:
                self.foodCell = [tableView dequeueReusableCellWithIdentifier:@"foodCell"];
                if (!self.foodCell) {
                    self.foodCell = [[YZRemindCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"medicineCell"];
                }
                [self.foodCell.remindImgView setImage:[UIImage imageNamed:@"remind_yinshi.png"]];
                self.foodCell.remindStrLab.text = @"吃饭提醒";
                self.foodCell.remindTimeLab.text = @"上午:";
                self.foodCell.remindSpecificTimeLab.text = @"11:55";
                self.foodCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                return self.foodCell;
                break;
               case 2:
                self.bloodCell = [tableView dequeueReusableCellWithIdentifier:@"bloodCell"];
                if (!self.bloodCell) {
                    self.bloodCell = [[YZRemindCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"medicineCell"];
                }
                [self.bloodCell.remindImgView setImage:[UIImage imageNamed:@"remind_xtjc.png"]];
                self.bloodCell.remindStrLab.text = @"血糖检测";
                self.bloodCell.remindTimeLab.text = @"上午:";
                self.bloodCell.remindSpecificTimeLab.text = @"11:55";
                self.bloodCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                return self.bloodCell;
                break;
            default:
                break;
        }
    }else if (indexPath.section == 1){
        if (indexPath.row == 0) {
            self.remindWayCell = [tableView dequeueReusableCellWithIdentifier:@"remindWayCell"];
            if (!self.remindWayCell) {
                self.remindWayCell = [[YZRemindWayCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"remindWayCell"];
            }
            self.remindWayCell.delegate = self;
            return self.remindWayCell;
        }

    }
    
    // Configure the cell...
    
    return nil;
}

- (void)tapYuYinSelected:(BOOL)selected{
    if (selected) {
        
    }else{
        
    }
}

- (void)tapMusicSelected:(BOOL)selected
{
    if (selected) {
        
    }else{
        
    }
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
