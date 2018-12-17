//
//  ViewController.m
//  yylableDemo1
//
//  Created by 张晓亮 on 2018/12/17.
//  Copyright © 2018 张晓亮. All rights reserved.
//

#import "ViewController.h"
#import <YYKit/YYLabel.h>
#import <Masonry/Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self yourcode];

    [self mycode1];

    [self mycode2];



    
}


-(void)yourcode {


    YYLabel *lable1 = [[YYLabel alloc] init];

    NSAttributedString *arrt1 = [[NSAttributedString alloc] initWithString:@"你们的写法，计算containerWithSize的写法"];

    CGSize size1 = [arrt1 boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:NULL].size;
    YYTextContainer *yyContainer1 = [YYTextContainer containerWithSize:size1];
    lable1.textLayout = [YYTextLayout layoutWithContainer:yyContainer1 text:arrt1];
    lable1.backgroundColor = [UIColor redColor];
    [self.view addSubview:lable1];
    [lable1 mas_makeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(15));
        make.top.equalTo(@(100));
        make.width.equalTo(@(size1.width));
        make.height.equalTo(@(size1.height));
    }];
}


-(void)mycode1 {

    YYLabel *lable1 = [[YYLabel alloc] init];

    NSAttributedString *arrt1 = [[NSAttributedString alloc] initWithString:@"我的的写法，不计算containerWithSize的写法"];
    YYTextContainer *yyContainer1 = [YYTextContainer containerWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)];
    lable1.textLayout = [YYTextLayout layoutWithContainer:yyContainer1 text:arrt1];
    lable1.backgroundColor = [UIColor redColor];
    [self.view addSubview:lable1];
    [lable1 mas_makeConstraints:^(MASConstraintMaker *make) {

        make.left.equalTo(@(15));
        make.top.equalTo(@(130));
    }];
}


//设置对齐方式之后，会出现计算文本错误的效果
-(void)mycode2 {

    YYLabel *lable1 = [[YYLabel alloc] init];

    NSAttributedString *arrt1 = [[NSAttributedString alloc] initWithString:@"我的的写法，不计算containerWithSize的写法,设置对齐方式"];
    YYTextContainer *yyContainer1 = [YYTextContainer containerWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)];
    lable1.textLayout = [YYTextLayout layoutWithContainer:yyContainer1 text:arrt1];
    lable1.backgroundColor = [UIColor redColor];
    lable1.textAlignment = NSTextAlignmentRight;
    [self.view addSubview:lable1];
    [lable1 mas_makeConstraints:^(MASConstraintMaker *make) {

        make.right.equalTo(@(-15));
        make.top.equalTo(@(160));
    }];

}


@end
