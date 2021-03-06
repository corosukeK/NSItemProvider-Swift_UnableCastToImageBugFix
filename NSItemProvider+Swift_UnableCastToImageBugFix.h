//
//  NSItemProvider+Swift_UnableCastToImageBugFix.h
//  NSItemProvider+Swift_UnableCastToImageBugFix
//
//  Created by 木村圭佑 on 2014/10/14.
//  Copyright (c) 2014年 木村圭佑. All rights reserved.
//

#import <Foundation/Foundation.h>

@import UIKit;
@import MobileCoreServices;

typedef void (^NSItemProviderImageLoadCompletionHandler)(UIImage *item, NSError *error);

@interface NSItemProvider (Swift_UnableCasToImagetBugFix)

- (void)loadImageWithOptions:(NSDictionary *)options completionHandler:(NSItemProviderImageLoadCompletionHandler)completionHandler;

@end