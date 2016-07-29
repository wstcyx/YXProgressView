//
//  TKProgressView.h
//  Talkmate
//
//  Created by 200h-53-1 on 15/11/24.
//  Copyright © 2015年 Steven Masini. All rights reserved.
//

#import <UIKit/UIKit.h>
FOUNDATION_EXPORT NSString *test11111;
@interface TKProgressView : UIView

@property (nonatomic,assign) CGFloat progress;
@property (nonatomic,strong) NSString *text;
@property (nonatomic,strong) UIFont *textFont;
@property (nonatomic,strong) UIColor *prsColor;

@end
