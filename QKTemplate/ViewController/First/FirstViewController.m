//
//  FirstViewController.m
//  QKTemplate
//
//  Created by liangqiangkun on 2019/3/4.
//  Copyright © 2019 liangqiangkun. All rights reserved.
//
//
//                       .::::.
//                     .::::::::.
//                    :::::::::::
//                 ..:::::::::::'
//              '::::::::::::'
//                .::::::::::
//           '::::::::::::::..
//                ..::::::::::::.
//              ``::::::::::::::::
//               ::::``:::::::::'        .:::.
//              ::::'   ':::::'       .::::::::.
//            .::::'      ::::     .:::::::'::::.
//           .:::'       :::::  .:::::::::' ':::::.
//          .::'        :::::.:::::::::'      ':::::.
//         .::'         ::::::::::::::'         ``::::.
//     ...:::           ::::::::::::'              ``::.
//    ```` ':.          ':::::::::'                  ::::..
//                       '.:::::'                    ':'````..

#import "FirstViewController.h"
#import "Masonry.h"
#import "UIButton+Common.h"
#import "SDAutoLayout.h"
#import <sqlite3.h>
#define kEncryptKey @"zhegeshijiamidekey"
@interface FirstViewController ()
@property (nonatomic,strong)UIButton *commonBtn;
@property (nonatomic,strong)UIButton *commonBtn2;
@property (nonatomic,strong)UIButton *commonBtn3;
@property (nonatomic,strong)UIButton *commonBtn4;
@property (nonatomic,strong)UIButton *commonBtn5;
@property (nonatomic,strong)UIButton *commonBtn6;
@property (nonatomic,strong)UIButton *commonBtn7;
@end

@implementation FirstViewController
{
    NSString *_dbPath;
@private
    sqlite3 *dbConnection;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initSubViews];
    _dbPath = [NSString stringWithFormat:@"%@/QKTemp.db",QKDocumentPath];
}
//初始化子视图
- (void)initSubViews{
    [self.view addSubview:self.commonBtn];
    [self.view addSubview:self.commonBtn2];
    [self.view addSubview:self.commonBtn3];
    [self.view addSubview:self.commonBtn4];
    [self.view addSubview:self.commonBtn5];
    [self.view addSubview:self.commonBtn6];
    [self.view addSubview:self.commonBtn7];
    [self addMasonry];
}
- (void)addMasonry{
    self.commonBtn.sd_layout.topSpaceToView(self.view,QKNaviAndSta_Height+60);
    self.commonBtn.sd_layout.widthIs(100);
    self.commonBtn.sd_layout.heightIs(50);
    self.commonBtn.sd_layout.centerXIs(QKScreen_Width/4);
    
    self.commonBtn2.sd_layout.topEqualToView(self.commonBtn);
    self.commonBtn2.sd_layout.widthRatioToView(self.commonBtn, 1);
    self.commonBtn2.sd_layout.heightRatioToView(self.commonBtn, 1);
    self.commonBtn2.sd_layout.centerXIs(QKScreen_Width/4*3);
    
    self.commonBtn3.sd_layout.topSpaceToView(self.commonBtn, 50);
    self.commonBtn3.sd_layout.widthRatioToView(self.commonBtn, 1);
    self.commonBtn3.sd_layout.heightRatioToView(self.commonBtn, 1);
    self.commonBtn3.sd_layout.centerXEqualToView(self.commonBtn);

    self.commonBtn4.sd_layout.topEqualToView(self.commonBtn3);
    self.commonBtn4.sd_layout.widthRatioToView(self.commonBtn, 1);
    self.commonBtn4.sd_layout.heightRatioToView(self.commonBtn, 1);
    self.commonBtn4.sd_layout.centerXEqualToView(self.commonBtn2);

    self.commonBtn5.sd_layout.topSpaceToView(self.commonBtn3, 50);
    self.commonBtn5.sd_layout.widthRatioToView(self.commonBtn, 1);
    self.commonBtn5.sd_layout.heightRatioToView(self.commonBtn, 1);
    self.commonBtn5.sd_layout.centerXEqualToView(self.commonBtn);

    self.commonBtn6.sd_layout.topEqualToView(self.commonBtn5);
    self.commonBtn6.sd_layout.widthRatioToView(self.commonBtn, 1);
    self.commonBtn6.sd_layout.heightRatioToView(self.commonBtn, 1);
    self.commonBtn6.sd_layout.centerXEqualToView(self.commonBtn2);

    self.commonBtn7.sd_layout.topSpaceToView(self.commonBtn6, 50);
    self.commonBtn7.sd_layout.widthRatioToView(self.commonBtn, 1);
    self.commonBtn7.sd_layout.heightRatioToView(self.commonBtn, 1);
    self.commonBtn7.sd_layout.centerXEqualToView(self.view);
}
#pragma mark ---getter---

- (UIButton *)commonBtn{
    if (!_commonBtn) {
        _commonBtn = [UIButton createBtnWithTitle:@"创建数据库" titleFontSize:18 bgImg:nil bgColor:QKColorDefaultBlue action:^(UIButton *button) {
        }];
        [_commonBtn.layer setCornerRadius:5];
    }
    return _commonBtn;
}
- (UIButton *)commonBtn2{
    if (!_commonBtn2) {
        _commonBtn2 = [UIButton createBtnWithTitle:@"打开数据库" titleFontSize:18 bgImg:nil bgColor:QKColorCoolGrayColor action:^(UIButton *button) {
        }];
        [_commonBtn2.layer setCornerRadius:5];
    }
    return _commonBtn2;
}
- (UIButton *)commonBtn3{
    if (!_commonBtn3) {
        _commonBtn3 = [UIButton createBtnWithTitle:@"插入数据" titleFontSize:18 bgImg:nil bgColor:QKColorCoolGrayColor action:^(UIButton *button) {
        }];
        [_commonBtn3.layer setCornerRadius:5];
    }
    return _commonBtn3;
}
- (UIButton *)commonBtn4{
    if (!_commonBtn4) {
        _commonBtn4 = [UIButton createBtnWithTitle:@"查询数据" titleFontSize:18 bgImg:nil bgColor:QKColorCoolGrayColor action:^(UIButton *button) {
        }];
        [_commonBtn4.layer setCornerRadius:5];
    }
    return _commonBtn4;
}
- (UIButton *)commonBtn5{
    if (!_commonBtn5) {
        _commonBtn5 = [UIButton createBtnWithTitle:@"加密数据库" titleFontSize:18 bgImg:nil bgColor:QKColorCoolGrayColor action:^(UIButton *button) {
        }];
        [_commonBtn5.layer setCornerRadius:5];
    }
    return _commonBtn5;
}
- (UIButton *)commonBtn6{
    if (!_commonBtn6) {
        _commonBtn6 = [UIButton createBtnWithTitle:@"解密数据库" titleFontSize:18 bgImg:nil bgColor:QKColorCoolGrayColor action:^(UIButton *button) {
        }];
        [_commonBtn6.layer setCornerRadius:5];
    }
    return _commonBtn6;
}
- (UIButton *)commonBtn7{
    if (!_commonBtn7) {
        _commonBtn7 = [UIButton createBtnWithTitle:@"关闭数据库" titleFontSize:18 bgImg:nil bgColor:QKColorCoolGrayColor action:^(UIButton *button) {
        }];
        [_commonBtn7.layer setCornerRadius:5];
    }
    return _commonBtn7;
}

- (BOOL)encryptDatabase:(NSString *)path {
    NSString *sourcePath = path;
    NSString *targetPath = [NSString stringWithFormat:@"%@.tmp.db", path];
    
    if([self encryptDatabase:sourcePath targetPath:targetPath]) {
        NSFileManager *fm = [[NSFileManager alloc] init];
        [fm removeItemAtPath:sourcePath error:nil];
        [fm moveItemAtPath:targetPath toPath:sourcePath error:nil];
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)unEncryptDatabase:(NSString *)path {
    NSString *sourcePath = path;
    NSString *targetPath = [NSString stringWithFormat:@"%@.tmp.db", path];
    
    if([self unEncryptDatabase:sourcePath targetPath:targetPath]) {
        NSFileManager *fm = [[NSFileManager alloc] init];
        [fm removeItemAtPath:sourcePath error:nil];
        [fm moveItemAtPath:targetPath toPath:sourcePath error:nil];
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)encryptDatabase:(NSString *)sourcePath targetPath:(NSString *)targetPath {
    const char* sqlQ = [[NSString stringWithFormat:@"ATTACH DATABASE '%@' AS encrypted KEY '%@';", targetPath, kEncryptKey] UTF8String];
    
    sqlite3 *unencrypted_DB;
    if (sqlite3_open([sourcePath UTF8String], &unencrypted_DB) == SQLITE_OK) {
        
        // Attach empty encrypted database to unencrypted database
        sqlite3_exec(unencrypted_DB, sqlQ, NULL, NULL, NULL);
        
        // export database
        sqlite3_exec(unencrypted_DB, "SELECT sqlcipher_export('encrypted');", NULL, NULL, NULL);
        
        // Detach encrypted database
        sqlite3_exec(unencrypted_DB, "DETACH DATABASE encrypted;", NULL, NULL, NULL);
        
        sqlite3_close(unencrypted_DB);
        
        return YES;
    }
    else {
        sqlite3_close(unencrypted_DB);
        NSAssert1(NO, @"Failed to open database with message '%s'.", sqlite3_errmsg(unencrypted_DB));
        
        return NO;
    }
}

- (BOOL)unEncryptDatabase:(NSString *)sourcePath targetPath:(NSString *)targetPath {
    const char* sqlQ = [[NSString stringWithFormat:@"ATTACH DATABASE '%@' AS plaintext KEY '';", targetPath] UTF8String];
    
    sqlite3 *encrypted_DB;
    if (sqlite3_open([sourcePath UTF8String], &encrypted_DB) == SQLITE_OK) {
        
        
        sqlite3_exec(encrypted_DB, [[NSString stringWithFormat:@"PRAGMA key = '%@';", kEncryptKey] UTF8String], NULL, NULL, NULL);
        
        // Attach empty unencrypted database to encrypted database
        sqlite3_exec(encrypted_DB, sqlQ, NULL, NULL, NULL);
        
        // export database
        sqlite3_exec(encrypted_DB, "SELECT sqlcipher_export('plaintext');", NULL, NULL, NULL);
        
        // Detach unencrypted database
        sqlite3_exec(encrypted_DB, "DETACH DATABASE plaintext;", NULL, NULL, NULL);
        
        sqlite3_close(encrypted_DB);
        
        return YES;
    }
    else {
        sqlite3_close(encrypted_DB);
        NSAssert1(NO, @"Failed to open database with message '%s'.", sqlite3_errmsg(encrypted_DB));
        
        return NO;
    }
}

- (BOOL)changeKey:(NSString *)dbPath originKey:(NSString *)originKey newKey:(NSString *)newKey {
    sqlite3 *encrypted_DB;
    if (sqlite3_open([dbPath UTF8String], &encrypted_DB) == SQLITE_OK) {
        
        sqlite3_exec(encrypted_DB, [[NSString stringWithFormat:@"PRAGMA key = '%@';", originKey] UTF8String], NULL, NULL, NULL);
        
        sqlite3_exec(encrypted_DB, [[NSString stringWithFormat:@"PRAGMA rekey = '%@';", newKey] UTF8String], NULL, NULL, NULL);
        
        sqlite3_close(encrypted_DB);
        return YES;
    }
    else {
        sqlite3_close(encrypted_DB);
        NSAssert1(NO, @"Failed to open database with message '%s'.", sqlite3_errmsg(encrypted_DB));
        
        return NO;
    }
}

@end
