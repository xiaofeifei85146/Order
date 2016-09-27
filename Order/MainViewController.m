//
//  MainViewController.m
//  Order
//
//  Created by Teplot_03 on 16/9/22.
//  Copyright © 2016年 Teplot_03. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    
    //UI
    [self configerUI];
    
    //数据源,有的分三层，有的分两层
    NSArray *titleArray = @[@"面点",@"凉菜",@"热菜",@"油炸"];
    
    //面点
    NSArray *noodles = @[@"豆面",@"烩面",@"炒面"];
    
    //凉菜
    NSArray *cold_dishes = @[@"水煮花生米",@"油炸花生米",@"变蛋",@"皮冻",@"豆角",@"腐竹",@"豌豆",@"豆腐"];
    
    //热菜
    NSArray *hot_dishes = @[@"鱼香肉丝",@"青椒肉片",@"糖醋里脊"];
    
    //油炸
    NSArray *deep_fry = @[@"小鱼",@"鸡腿",@"茄鱼"];
    
    [self.dataArray addObject:noodles];
    [self.dataArray addObject:cold_dishes];
    [self.dataArray addObject:hot_dishes];
    [self.dataArray addObject:deep_fry];
    
    [self.dataArray addObject:titleArray];
}

- (void)configerUI {
    [self configerSubmitButton];
}

- (void)configerSubmitButton {
    UIButton *submitButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [submitButton setTitle:@"提\n交\n菜\n单" forState:UIControlStateNormal];
    [submitButton setBackgroundImage:[UIImage imageNamed:@"main"] forState:UIControlStateNormal];
    submitButton.titleLabel.numberOfLines = 0;
    
    CGFloat width = 40;
    CGFloat rightGap = 20;
    CGFloat topGap = 20;
    CGFloat height = 200;
    submitButton.frame = CGRectMake(ScreenW-width-rightGap, topGap, width, height);
    [self.view addSubview:submitButton];
    
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataArray.count-1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.00001;
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UITableViewHeaderFooterView *header = [[UITableViewHeaderFooterView alloc] init];
    header.textLabel.text = [self.dataArray lastObject][section];
    return header;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.dataArray[section] count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    
    NSArray *arr = self.dataArray[indexPath.section];

    cell.textLabel.text = [NSString stringWithFormat:@"%@",arr[indexPath.row]];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

//状态栏设置
- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
