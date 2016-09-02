#import "CharacountForNotes9.h"

%hook ICNoteEditorViewController
- (void)viewWillAppear:(BOOL)arg1 // initialize title
{
      %orig;
      NSString *content = self.note.title;
      NSString *contentLength = [NSString stringWithFormat:@"%lu",(unsigned long)[content length]];
      self.title = contentLength;
}

- (void)viewDidDisappear:(BOOL)arg1 // reset title
{
      %orig;
      self.title = nil;
}

- (void)textViewDidChange:(UITextView *)arg1 // Update title
{
      %orig;
      NSString *content = self.textView.text;
      NSString *contentLength = [NSString stringWithFormat:@"%lu",(unsigned long)[content length]];
      self.title = contentLength;
}
%end