//
//  TKProgressView.m
//  Talkmate
//
//  Created by 200h-53-1 on 15/11/24.
//  Copyright © 2015年 Steven Masini. All rights reserved.
//

#import "TKProgressView.h"

@interface TKProgressView()


@property (nonatomic,assign) NSInteger cornerRadius;
@property (nonatomic,assign) NSInteger borderWidth;

@property (nonatomic,strong) UIColor *noColor;

@property (nonatomic,strong) UIView *topView;
@property (nonatomic,strong) UIView *bottomView;

@property (nonatomic,strong) UILabel *topLabel;
@property (nonatomic,strong) UILabel *bottomLabel;



@end
@implementation TKProgressView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self yxInit];
        [self yxFrame:frame];
        self.noColor = [UIColor whiteColor];
        self.prsColor = [UIColor redColor];
    }
    return self;
}

- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    [self yxFrame:frame];
}

- (void)yxFrame:(CGRect)frame
{
    self.layer.cornerRadius = frame.size.height/2;
    
    self.topView.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    self.topView.layer.cornerRadius = frame.size.height/2;
    self.topLabel.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    self.bottomView.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    self.bottomView.layer.cornerRadius = frame.size.height/2;
    self.bottomLabel.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    
//    UIBezierPath *bgPath = [[UIBezierPath alloc] init];
//    [bgPath moveToPoint:CGPointMake(frame.size.width - frame.size.height/2, frame.size.height/2)];
//    [bgPath addLineToPoint:CGPointMake(frame.size.height/2, frame.size.height/2)];
//    
//    UIBezierPath *path = [[UIBezierPath alloc] init];
//    [path moveToPoint:CGPointMake(frame.size.height/2, frame.size.height/2)];
//    [path addLineToPoint:CGPointMake(frame.size.width - frame.size.height/2, frame.size.height/2)];
}

- (void)yxInit
{
    self.borderWidth = 1;
    
    self.bottomView = [[UIView alloc] init];
    self.bottomView.clipsToBounds = YES;
    [self addSubview:self.bottomView];
    
    self.bottomLabel = [[UILabel alloc] init];
    self.bottomLabel.textAlignment = NSTextAlignmentCenter;
    self.bottomLabel.layer.masksToBounds = YES;
    self.bottomLabel.backgroundColor = [UIColor clearColor];
    [self addSubview:self.bottomLabel];
    
    self.topView = [[UIView alloc] init];
    self.topView.clipsToBounds = YES;
    [self addSubview:self.topView];
    
    self.topLabel = [[UILabel alloc] init];
    self.topLabel.textAlignment = NSTextAlignmentCenter;
    self.topLabel.layer.masksToBounds = YES;
    self.topLabel.layer.cornerRadius = 5;
    self.topLabel.backgroundColor = [UIColor clearColor];
    [self.topView addSubview:self.topLabel];
}

#pragma  mark - property set or get
- (void)setNoColor:(UIColor *)noColor
{
    self.topLabel.textColor = noColor;
    self.bottomView.backgroundColor = noColor;
}

- (void)setPrsColor:(UIColor *)prsColor
{
    self.layer.borderColor = prsColor.CGColor;
    self.bottomLabel.textColor = prsColor;
    self.topView.backgroundColor = prsColor;
}

- (void)setProgress:(CGFloat)progress
{
    self.topView.frame = CGRectMake(0, 0, self.frame.size.width * progress, self.frame.size.height);
}

- (void)setBorderWidth:(NSInteger)borderWidth
{
    self.layer.borderWidth = borderWidth;
}

- (void)setText:(NSString *)text
{
    self.topLabel.text = text;
    self.bottomLabel.text = text;
}

- (void)setTextFont:(UIFont *)textFont
{
    self.topLabel.font = textFont;
    self.bottomLabel.font = textFont;
}


@end
