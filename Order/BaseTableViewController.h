//
//  BaseTableViewController.h
//  Order
//
//  Created by Teplot_03 on 16/9/22.
//  Copyright © 2016年 Teplot_03. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableViewController : UIViewController

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end
