//
//  GreenNavigationController.m
//  UINavigationController
//
//  Created by lihonggui on 2016/12/2.
//  Copyright © 2016年 lihonggui. All rights reserved.
//

#import "GreenNavigationController.h"
#import "RedNavigationController.h"
#import "BlueNavigationController.h"
@interface GreenNavigationController ()

@end

@implementation GreenNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"绿色NavigationController";
}
- (IBAction)popRed:(UIButton *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)jumpBlue:(UIButton *)sender {
    
    BlueNavigationController *blue = [[BlueNavigationController alloc]init];
    [self.navigationController pushViewController:blue animated:YES];
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
