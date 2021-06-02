//
//  FirstViewController.m
//  DQM_IOSBaseKit
//
//  Created by daiquanming on 2021/6/2.
//  Copyright © 2021年 漂读网. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dqm_navgationBar.hidden = YES;
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.backView = [[UIImageView alloc] init];
    [self.view addSubview:self.backView];
    _backView.backgroundColor = UIColor.redColor;
    [_backView setImage:[UIImage imageNamed:@"第一张背景.png"]];
    _backView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    _backView.center = self.view.center;
    
    self.loginBtn = [[UIButton alloc] init];
    [self.view addSubview:self.loginBtn];
    [_loginBtn setImage:[UIImage imageNamed:@"第一张登录.png"] forState:UIControlStateNormal];
    _loginBtn.frame = CGRectMake(60, SCREEN_HEIGHT/9*6.5, SCREEN_WIDTH-120, (SCREEN_WIDTH-120)/545*83);
    
    
    self.qqBtn = [[UIButton alloc] init];
    [self.view addSubview:self.qqBtn];
    [_qqBtn setImage:[UIImage imageNamed:@"QQ.png"] forState:UIControlStateNormal];
    _qqBtn.frame = CGRectMake(130, SCREEN_HEIGHT/9*7.2, 44, 44);
    
    self.wxBtn = [[UIButton alloc] init];
    [self.view addSubview:self.wxBtn];
    [_wxBtn setImage:[UIImage imageNamed:@"wechat.png"] forState:UIControlStateNormal];
    _wxBtn.frame = CGRectMake(SCREEN_WIDTH-174, SCREEN_HEIGHT/9*7.2, 44, 44);
    
    [_loginBtn addTarget:self action:@selector(action) forControlEvents:UIControlEventTouchUpInside];
    [_qqBtn addTarget:self action:@selector(action) forControlEvents:UIControlEventTouchUpInside];
    [_wxBtn addTarget:self action:@selector(action) forControlEvents:UIControlEventTouchUpInside];
}


-(void)action {
    [self.navigationController pushViewController:[[SecondViewController alloc] init] animated:true];
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
