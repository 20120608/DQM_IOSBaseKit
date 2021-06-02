//
//  SecondViewController.m
//  DQM_IOSBaseKit
//
//  Created by daiquanming on 2021/6/2.
//  Copyright © 2021年 漂读网. All rights reserved.
//

#import "SecondViewController.h"
#import "ThreeViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dqm_navgationBar.hidden = YES;
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.backView = [[UIImageView alloc] init];
    [self.view addSubview:self.backView];
    _backView.backgroundColor = UIColor.redColor;
    [_backView setImage:[UIImage imageNamed:@"第二张.png"]];
    _backView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    _backView.center = self.view.center;
    
    self.loginBtn = [[UIButton alloc] init];
    [self.view addSubview:self.loginBtn];
    [_loginBtn setImage:[UIImage imageNamed:@"第二张登录.png"] forState:UIControlStateNormal];
    _loginBtn.frame = CGRectMake(60, SCREEN_HEIGHT/9*6.5, SCREEN_WIDTH-120, (SCREEN_WIDTH-120)/545*83);
    
    self.firstTF = [[UITextField alloc] init];
    [self.view addSubview:self.firstTF];
    _firstTF.frame = CGRectMake(70, SCREEN_HEIGHT/812*250, SCREEN_WIDTH-140, 44);
    
    self.secondTF = [[UITextField alloc] init];
    [self.view addSubview:self.secondTF];
    _secondTF.frame = CGRectMake(70, SCREEN_HEIGHT/812*380, SCREEN_WIDTH-140, 44);
//
    [_loginBtn addTarget:self action:@selector(action) forControlEvents:UIControlEventTouchUpInside];
}


-(void)action {
    [self.navigationController pushViewController:[[ThreeViewController alloc] init] animated:true];
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
