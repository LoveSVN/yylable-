//
//  ViewController.m
//  yyLableDemo2
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
    [self mycode2];
}

//修复后的效果
-(void)mycode2 {

    YYLabel *lable1 = [[YYLabel alloc] init];

    NSAttributedString *arrt1 = [[NSAttributedString alloc] initWithString:@"修复后,设置对齐方式"];
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
