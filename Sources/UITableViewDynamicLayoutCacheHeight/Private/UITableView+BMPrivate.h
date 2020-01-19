//    MIT License
//
//    Copyright (c) 2019 https://liangdahong.com
//
//    Permission is hereby granted, free of charge, to any person obtaining a copy
//    of this software and associated documentation files (the "Software"), to deal
//    in the Software without restriction, including without limitation the rights
//    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//    copies of the Software, and to permit persons to whom the Software is
//    furnished to do so, subject to the following conditions:
//
//    The above copyright notice and this permission notice shall be included in all
//    copies or substantial portions of the Software.
//
//    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//    SOFTWARE.

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (BMPrivate)

@property (nonatomic, assign) BOOL isSectionHeaderHeightCache;
@property (nonatomic, strong, readonly) NSMutableDictionary <NSString *, NSNumber *> *headerHeightDictionary;
@property (nonatomic, strong, readonly) NSMutableDictionary <NSString *, NSNumber *> *headerVerticalDictionary;
@property (nonatomic, strong, readonly) NSMutableDictionary <NSString *, NSNumber *> *headerHorizontalDictionary;
@property (nonatomic, strong, readonly) NSMutableArray <NSNumber *> *headerHeightArray;
@property (nonatomic, strong, readonly) NSMutableArray <NSNumber *> *headerVerticalArray;
@property (nonatomic, strong, readonly) NSMutableArray <NSNumber *> *headerHorizontalArray;


@property (nonatomic, assign) BOOL isIndexPathHeightCache;
@property (nonatomic, strong, readonly) NSMutableDictionary <NSString *, NSNumber *> *heightDictionary;
@property (nonatomic, strong, readonly) NSMutableDictionary <NSString *, NSNumber *> *verticalDictionary;
@property (nonatomic, strong, readonly) NSMutableDictionary <NSString *, NSNumber *> *horizontalDictionary;
@property (nonatomic, strong, readonly) NSMutableArray <NSMutableArray <NSNumber *> *> *heightArray;
@property (nonatomic, strong, readonly) NSMutableArray <NSMutableArray <NSNumber *> *> *verticalArray;
@property (nonatomic, strong, readonly) NSMutableArray <NSMutableArray <NSNumber *> *> *horizontalArray;


@property (nonatomic, assign) BOOL isSectionFooterHeightCache;
@property (nonatomic, strong, readonly) NSMutableDictionary <NSString *, NSNumber *> *footerHeightDictionary;
@property (nonatomic, strong, readonly) NSMutableDictionary <NSString *, NSNumber *> *footerVerticalDictionary;
@property (nonatomic, strong, readonly) NSMutableDictionary <NSString *, NSNumber *> *footerHorizontalDictionary;
@property (nonatomic, strong, readonly) NSMutableArray <NSNumber *> *footerHeightArray;
@property (nonatomic, strong, readonly) NSMutableArray <NSNumber *> *footerVerticalArray;
@property (nonatomic, strong, readonly) NSMutableArray <NSNumber *> *footerHorizontalArray;

@end

NS_ASSUME_NONNULL_END