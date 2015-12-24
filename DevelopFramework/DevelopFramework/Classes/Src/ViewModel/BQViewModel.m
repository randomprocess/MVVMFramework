//
//  BQViewModel.m
//  DevelopFramework
//
//  Created by momo on 15/12/23.
//  Copyright © 2015年 teason. All rights reserved.
//

#import "BQViewModel.h"
#import "BQModel.h"
#import "BQTestModel.h"

@implementation BQViewModel

+ (void)getHomeDataList:(NSString *)url params:(NSDictionary *)params success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure {
    /**
     *  在这里进行首页控制器的网络请求加载和利用(MJExtension)转换模型
     */
//    [BQHttpTool get:url params:params success:^(id json) {
//        
//    } failure:^(NSError *error) {
//        failure(error);
//    }];
    // 模拟网络请求加载，设置延迟
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSMutableArray *dataList = [NSMutableArray array];
        for (int i = 0; i < 10; i++)
        {
            BQModel *obj = [[BQModel alloc] init] ;
            obj.name = [NSString stringWithFormat:@"my name is : %d",i] ;
            obj.height = 150 + i * 5 ;
            [dataList addObject:obj] ;
        }
        success(dataList);
        failure(nil);
        
    });

}

+ (void)getViewController2DataList:(NSString *)url params:(NSDictionary *)params success:(void (^)(NSArray *))success failure:(void (^)(NSError *))failure {
    /**
     *  在这里进行首页控制器的网络请求加载和利用(MJExtension)转换模型
     */
    //    [BQHttpTool get:url params:params success:^(id json) {
    //
    //    } failure:^(NSError *error) {
    //        failure(error);
    //    }];
    // 模拟网络请求加载，设置延迟
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        NSMutableArray *dataList = [NSMutableArray array];
        for (int i = 0; i < 10; i++)
        {
            BQTestModel *obj = [[BQTestModel alloc] init] ;
            obj.name = [NSString stringWithFormat:@"my name is : %d",i] ;
            obj.height = 150 + i * 5 ;
            [dataList addObject:obj] ;
        }
        success(dataList);
        failure(nil);
        
    });
    
}
@end