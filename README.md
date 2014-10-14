NSItemProvider-Swift_UnableCastToImageBugFix
============================================

## Why do I have created this

Swift has a bug.

e.g.

```swift
weak var weakImageView = self.imageView

itemProvider.loadItemForTypeIdentifier(kUTTypeImage as NSString, options: nil, completionHandler: { (image, error) in
	if image != nil {
		NSOperationQueue.mainQueue().addOperationWithBlock {
			if let imageView = weakImageView {
				imageView.image = image as? UIImage
			}
		}
	}
})

```

This Program falls.
Swift can't cast NSSecureCoding to UIImage.

```objective-c
__weak UIImageView *imageView = self.imageView;
[itemProvider loadItemForTypeIdentifier:(NSString *)kUTTypeImage options:nil completionHandler:^(UIImage *image, NSError *error){
	if(image) {
		[[NSOperationQueue mainQueue] addOperationWithBlock:^{
			[imageView setImage:image];
		}];
	}
}];

```
However, Objective-C Program is Fine.
Objective-C can cast NSSecureCoding to UIImage.

## How to Use

1. Import this two Files in your project
2. Create Bridging Header
3. #import in Bridging Header
4. Setting Bridging Header in your xcode project settings



