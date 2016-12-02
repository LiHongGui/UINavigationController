//
//  RedNavigationController.m
//  UINavigationController
//
//  Created by lihonggui on 2016/12/2.
//  Copyright © 2016年 lihonggui. All rights reserved.
//

#import "RedNavigationController.h"
#import "GreenNavigationController.h"
#import "BlueNavigationController.h"
@interface RedNavigationController ()
@property(nonatomic,strong) RedNavigationController *red;
@property (weak, nonatomic) IBOutlet UIButton *jumpGreen;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation RedNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"红色NavigationController";
    // Do any additional setup after loading the view from its nib.
    _red = [[RedNavigationController alloc]init];
    _red.navigationController.navigationItem.title = @"红色";
    UIButton *green = [[UIButton alloc]init];
    green = _jumpGreen;
    [green addTarget:self action:@selector(jumpClickGreen) forControlEvents:UIControlEventTouchUpInside];
}
-(void)jumpClickGreen
{
    GreenNavigationController *green = [[GreenNavigationController alloc]init];
    green.navigationItem.title = self.textField.text;
    [self.navigationController pushViewController:green animated:YES];
}
- (IBAction)jumpBlue:(UIButton *)sender {
    
    BlueNavigationController *blue = [[BlueNavigationController alloc]init];
    [self.navigationController pushViewController:blue animated:YES];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.textField resignFirstResponder];
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
