//
//  BlueNavigationController.m
//  UINavigationController
//
//  Created by lihonggui on 2016/12/2.
//  Copyright © 2016年 lihonggui. All rights reserved.
//

#import "BlueNavigationController.h"
#import "RedNavigationController.h"
@interface BlueNavigationController ()

@end

@implementation BlueNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"蓝色NavigationController";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)popGreen:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)popRed:(UIButton *)sender {
    //第0个控制器就是红色的控制器
    UINavigationController *nav = [self.navigationController.viewControllers objectAtIndex:0];
    //跳转到指定色控制器
    [self.navigationController popToViewController:nav animated:YES];
    //根控制器=红色控制器
//    [self.navigationController popToRootViewControllerAnimated:YES];
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
