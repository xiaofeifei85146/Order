//
//  TabbarViewController.m
//  Order
//
//  Created by Teplot_03 on 16/9/22.
//  Copyright © 2016年 Teplot_03. All rights reserved.
//

#import "TabbarViewController.h"
#import "MainViewController.h"


@interface TabbarViewController ()

@end

@implementation TabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    MainViewController *main = [[MainViewController alloc] init];
    main.tabBarItem.title = @"点菜";
    main.tabBarItem.image = [UIImage imageNamed:@""];
    [self addChildViewController:main];
    
    
}

- (BOOL)shouldAutorotate {
    return NO;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationLandscapeRight;
}


@end
