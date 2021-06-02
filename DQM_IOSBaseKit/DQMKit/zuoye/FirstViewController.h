//
//  FirstViewController.h
//  DQM_IOSBaseKit
//
//  Created by daiquanming on 2021/6/2.
//  Copyright © 2021年 漂读网. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DQMBaseViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface FirstViewController : DQMBaseViewController
/** 背景 */
@property (strong, nonatomic) UIImageView *backView;
/** 进入 */
@property (strong, nonatomic) UIButton *loginBtn;
/** wx */
@property (strong, nonatomic) UIButton *wxBtn;
/** qq */
@property (strong, nonatomic) UIButton *qqBtn;
@end

NS_ASSUME_NONNULL_END
