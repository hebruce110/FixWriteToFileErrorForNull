FixWriteToFileErrorForNull
==========================

解决writeToFile因为null失败

将数组或字典存到本地，以data的形式,这个可以解决出现null无法保存的情况

用


	- (BOOL)writeToFile:(NSString *)path;

代替

	- (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile;
