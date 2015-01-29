//
//  YZSugarDataViewController.m
//  YZDiabetes
//
//  Created by sysnet on 15/1/28.
//  Copyright (c) 2015年 yuzhao. All rights reserved.
//

#import "YZSugarDataViewController.h"
#import "YSChartCell.h"

@interface YZSugarDataViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic)YSChartCell *chartCell;

@end

@implementation YZSugarDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self shareAction];//分享方法调用
    [self setDataPickAction];//DataPick方法调用
    [self setHeadChartAction];//headChart方法调用
    [self tableViewAction];
    
    // Do any additional setup after loading the view.
}

#pragma mark Share
//分享数据
- (void)shareAction
{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"share.png"] style:UIBarButtonItemStylePlain target:self action:@selector(shareTTT)];
}

- (void)shareTTT
{
    
}

#pragma mark DataPickView
//setDataPickView
- (void)setDataPickAction
{
    self.dataPickView = [[UIView alloc]initWithFrame:CGRectMake(0, 60, self.view.bounds.size.width, 40)];
    self.dataPickView.backgroundColor = BAR_TINT_COLOR;
    [self.view addSubview:self.dataPickView];
    
    
    self.dataSelectView = [[UIImageView alloc]initWithFrame:CGRectMake(5, 8, 30, 30)];
    [self.dataSelectView setImage:[UIImage imageNamed:@"sugar_riqi.png"]];
    [self.dataPickView addSubview:self.dataSelectView];
    
    
    self.dateSelectionLab = [[UILabel alloc]initWithFrame:CGRectMake(45, 10, 80, 20)];
    self.dateSelectionLab.text = @"日期选择:";
    [self.dataPickView addSubview:self.dateSelectionLab];
    
    
//    self.dataLeftBtn = [[UIButton alloc]init];
    self.dataLeftBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.dataLeftBtn.frame = CGRectMake(130, 10, 20, 20);
    [self.dataLeftBtn setBackgroundImage:[UIImage imageNamed:@"sugardata_left.png"] forState:UIControlStateNormal];
    [self.dataLeftBtn addTarget:self action:@selector(dataLeftBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.dataPickView addSubview:self.dataLeftBtn];
    
    
    self.dataPickBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.dataPickBtn.frame = CGRectMake(170, 10, 100, 20);
    [self.dataPickBtn setTitle:@"2015-02-18" forState:UIControlStateNormal];
    [self.dataPickBtn addTarget:self action:@selector(dataPickAction) forControlEvents:UIControlEventTouchUpInside];
    [self.dataPickView addSubview:self.dataPickBtn];
   
    
//    self.dataRightBtn = [[UIButton alloc]init];
    self.dataRightBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.dataRightBtn.frame = CGRectMake(290, 10, 20, 20);
//    [self.dataRightBtn setImage:[UIImage imageNamed:@"sugardata_rightSelect.png"] forState:UIControlStateNormal];
    [self.dataRightBtn setBackgroundImage:[UIImage imageNamed:@"sugardata_right.png"] forState:UIControlStateNormal];
    [self.dataRightBtn addTarget:self action:@selector(dataRightBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.dataPickView addSubview:self.dataRightBtn];
}

//leftButtonAction
- (void)dataLeftBtnAction
{
    
}

//dataPickAction
- (void)dataPickAction
{
    
}


//rightButtonAction
- (void)dataRightBtnAction
{
    
}

#pragma mark 表头
//setHeadChartView
- (void)setHeadChartAction
{
    float chartWight = CGRectGetWidth(self.view.bounds)/9;
    
    self.headChartView = [[UIView alloc]initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 60)];
    self.headChartView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.headChartView];
    
    
    self.headDataLab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, chartWight - 2, 58)];
    self.headDataLab.backgroundColor = BAR_SUJI_COLOR(248.0f, 248.0f, 225.0f, 1.0f);
    self.headDataLab.text = @"  日 \n  期";
    self.headDataLab.numberOfLines = [self.headDataLab.text length];//lable中文字竖排显示
    self.headDataLab.font = [UIFont systemFontOfSize:14.0f];
    [self.headChartView addSubview:self.headDataLab];
    
    
    self.headMorningLab = [[UILabel alloc]initWithFrame:CGRectMake(chartWight, 0, chartWight - 2, 58)];
    self.headMorningLab.backgroundColor = BAR_SUJI_COLOR(245.0f, 240.0f, 220.f, 1.0f);
    self.headMorningLab.text = @"  凌 \n  晨";
    self.headMorningLab.numberOfLines = [self.headMorningLab.text length];//lable中文字竖排显示
    self.headMorningLab.font = [UIFont systemFontOfSize:14.0f];
    [self.headChartView addSubview:self.headMorningLab];
    
    self.headBreakfastLab = [[UILabel alloc]initWithFrame:CGRectMake(chartWight * 2, 0, chartWight * 2 - 2, 28)];
    self.headBreakfastLab.backgroundColor = BAR_SUJI_COLOR(227.0f, 168.0f, 105.0f, 1.0f);
    self.headBreakfastLab.text = @"     早餐";
    self.headBreakfastLab.font = [UIFont systemFontOfSize:14.0f];
    [self.headChartView addSubview:self.headBreakfastLab];
    
    self.headBreakfastBeforeLab = [[UILabel alloc]initWithFrame:CGRectMake(chartWight * 2, 30, chartWight - 2, 28)];
    self.headBreakfastBeforeLab.backgroundColor = BAR_SUJI_COLOR(255.0f, 222.0f, 173.0f, 1.0f);
    self.headBreakfastBeforeLab.text = @"  前";
    self.headBreakfastBeforeLab.font = [UIFont systemFontOfSize:14.0f];
    [self.headChartView addSubview:self.headBreakfastBeforeLab];
    
    self.headBreakfastAfterLab = [[UILabel alloc]initWithFrame:CGRectMake(chartWight * 3, 30, chartWight - 2, 28)];
    self.headBreakfastAfterLab.backgroundColor = BAR_SUJI_COLOR(255.0f, 222.0f, 173.0f, 1.0f);;
    self.headBreakfastAfterLab.text = @"   后";
    self.headBreakfastAfterLab.font = [UIFont systemFontOfSize:14.0f];
    [self.headChartView addSubview:self.headBreakfastAfterLab];
    
    
    self.headLunchLab = [[UILabel alloc]initWithFrame:CGRectMake(chartWight * 4, 0, chartWight * 2 - 2, 28)];
    self.headLunchLab.backgroundColor = BAR_SUJI_COLOR(210.0f, 105.0f, 30.0f, 1.0f);
    self.headLunchLab.text = @"     午餐";
    self.headLunchLab.font = [UIFont systemFontOfSize:14.0f];
    [self.headChartView addSubview:self.headLunchLab];
    
    self.headLunchBeforeLab = [[UILabel alloc]initWithFrame:CGRectMake(chartWight * 4, 30, chartWight - 2, 28)];
    self.headLunchBeforeLab.backgroundColor = BAR_SUJI_COLOR(244.0f, 164.0f, 96.0f, 1.0f);
    self.headLunchBeforeLab.text = @"  前";
    self.headLunchBeforeLab.font = [UIFont systemFontOfSize:14.0f];
    [self.headChartView addSubview:self.headLunchBeforeLab];
    
    self.headLunchAfterLab = [[UILabel alloc]initWithFrame:CGRectMake(chartWight * 5, 30, chartWight - 2, 28)];
    self.headLunchAfterLab.backgroundColor = BAR_SUJI_COLOR(244.0f, 164.0f, 96.0f, 1.0f);
    self.headLunchAfterLab.text = @"   后";
    self.headLunchAfterLab.font = [UIFont systemFontOfSize:14.0f];
    [self.headChartView addSubview:self.headLunchAfterLab];
    
    
    self.headDinnerLab = [[UILabel alloc]initWithFrame:CGRectMake(chartWight * 6, 0, chartWight * 2 - 2, 28)];
    self.headDinnerLab.backgroundColor = BAR_SUJI_COLOR(107.0f, 142.0f, 35.0f, 1.0f);
    self.headDinnerLab.text = @"     晚餐";
    self.headDinnerLab.font = [UIFont systemFontOfSize:14.0f];
    [self.headChartView addSubview:self.headDinnerLab];
    
    self.headDinnerBeforeLab = [[UILabel alloc]initWithFrame:CGRectMake(chartWight * 6, 30, chartWight - 2, 28)];
    self.headDinnerBeforeLab.backgroundColor = BAR_SUJI_COLOR(154.0f, 205.0f, 50.0f, 1.0f);
    self.headDinnerBeforeLab.text = @"  前";
    self.headDinnerBeforeLab.font = [UIFont systemFontOfSize:14.0f];
    [self.headChartView addSubview:self.headDinnerBeforeLab];
    
    self.headDinnerAfterLab = [[UILabel alloc]initWithFrame:CGRectMake(chartWight * 7, 30, chartWight - 2, 28)];
    self.headDinnerAfterLab.backgroundColor = BAR_SUJI_COLOR(154.0f, 205.0f, 50.0f, 1.0f);
    self.headDinnerAfterLab.text = @"   后";
    self.headDinnerAfterLab.font = [UIFont systemFontOfSize:14.0f];
    [self.headChartView addSubview:self.headDinnerAfterLab];
    
    
    self.headBeforeBadLab = [[UILabel alloc]initWithFrame:CGRectMake(chartWight * 8, 0, chartWight - 2, 58)];
    self.headBeforeBadLab.backgroundColor = BAR_SUJI_COLOR(0, 139.0f, 139.0f, 1.0f);
    self.headBeforeBadLab.text = @"  睡 \n  前";
    self.headBeforeBadLab.numberOfLines = [self.headBeforeBadLab.text length];//lable中文字竖排显示
    self.headBeforeBadLab.font = [UIFont systemFontOfSize:14.0f];
    [self.headChartView addSubview:self.headBeforeBadLab];
    
}

#pragma mark TableView
//setTableView
- (void)tableViewAction
{
    UITableView *chartTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 160, self.view.bounds.size.width, self.view.frame.size.height - 160) style:UITableViewStylePlain];
    chartTableView.dataSource = self;
    chartTableView.delegate = self;
    //chartTableView.scrollEnabled = NO;
    chartTableView.bounces = NO;
    chartTableView.separatorStyle = UITableViewCellAccessoryNone;
   // chartTableView.scrollIndicatorInsets = UIEdgeInsetsZero;
    [self.view addSubview:chartTableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *numberStr = [NSString stringWithFormat:@"  %ld",indexPath.row + 1];
    self.chartCell = [tableView dequeueReusableCellWithIdentifier:@"charCell"];
        if (!self.chartCell) {
            self.chartCell = [[YSChartCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"charCell"];
        }
    self.chartCell.chartDayNumberLab.text = numberStr;
    
    return self.chartCell;

}
 - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
