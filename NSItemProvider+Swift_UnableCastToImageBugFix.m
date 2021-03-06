//
//  NSItemProvider+Swift_UnableCastToImageBugFix.m
//  NSItemProvider+Swift_UnableCastToImageBugFix
//
//  Created by 木村圭佑 on 2014/10/14.
//  Copyright (c) 2014年 木村圭佑. All rights reserved.
//

#import "NSItemProvider+Swift_UnableCastToImageBugFix.h"

@implementation NSItemProvider (Swift_UnableCasToImagetBugFix)

- (void)loadImageWithOptions:(NSDictionary *)options completionHandler:(NSItemProviderImageLoadCompletionHandler)completionHandler
{
    [self loadItemForTypeIdentifier:(NSString *)kUTTypeImage options:options completionHandler:^(UIImage *item, NSError *error) {
        completionHandler(item,error);
    }];
}
@end