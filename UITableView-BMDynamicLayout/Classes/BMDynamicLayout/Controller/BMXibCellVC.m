//
//  BMXibCellVC.m
//  BMTemplateLayoutCellDemo
//
//  Created by __liangdahong on 2017/8/22.
//  Copyright © 2017年 ___liangdahong. All rights reserved.
//

#import "BMXibCellVC.h"
#import "UITableView+BMDynamicLayout.h"
#import "BMModel.h"
#import "BMCell.h"
#import "BMHeaderView.h"
#import "UIFooterView.h"
#import "BMSystemAdaptiveHeightVC.h"

@interface BMXibCellVC () <UITableViewDelegate, UITableViewDataSource>

    @property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) BMSystemAdaptiveHeightVC *systemAdaptiveHeightVC; ///< systemAdaptiveHeightVC

@end

@implementation BMXibCellVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UITableView-BMDynamicLayout";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"系统自适应" style:0 target:self action:@selector(otherClick)];
}

- (void)otherClick {
    [self.navigationController pushViewController:self.systemAdaptiveHeightVC animated:YES];
}

- (BMSystemAdaptiveHeightVC *)systemAdaptiveHeightVC {
    if (!_systemAdaptiveHeightVC) {
        _systemAdaptiveHeightVC = [BMSystemAdaptiveHeightVC new];
        _systemAdaptiveHeightVC.dataArray = self.dataArray;
    }
    return _systemAdaptiveHeightVC;
}

#pragma mark - 系统delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray[section].modelArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [BMCell bm_tableViewCellWithTableView:tableView];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(BMCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    cell.model = self.dataArray[indexPath.section].modelArray[indexPath.row];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView bm_heightWithCellClass:BMCell.class cacheByIndexPath:indexPath configuration:^(__kindof BMCell * _Nonnull cell) {
        cell.model = self.dataArray[indexPath.section].modelArray[indexPath.row];
    }];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    BMHeaderView *view = [BMHeaderView bm_tableViewHeaderFooterViewWithTableView:tableView];
    view.titleLabel.text = self.dataArray[section].headerTitle;
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return [tableView bm_heightWithHeaderFooterViewClass:BMHeaderView.class type:(BMHeaderFooterViewDynamicLayoutTypeHeader) section:section configuration:^(__kindof BMHeaderView * _Nonnull headerFooterView) {
        headerFooterView.titleLabel.text = self.dataArray[section].headerTitle;
    }];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIFooterView *view = [UIFooterView bm_tableViewHeaderFooterViewWithTableView:tableView];
    view.titleLabel.text = self.dataArray[section].footerTitle;
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return [tableView bm_heightWithHeaderFooterViewClass:UIFooterView.class type:(BMHeaderFooterViewDynamicLayoutTypeFooter) section:section configuration:^(__kindof UIFooterView * _Nonnull headerFooterView) {
        headerFooterView.titleLabel.text = self.dataArray[section].footerTitle;
    }];
}

@end