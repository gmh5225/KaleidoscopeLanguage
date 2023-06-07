
#ifndef __KALE_ERROR__
#define __KALE_ERROR__

#define LOG_ERROR(str, lineInfo, ...) printf("error: %d:%d-%d %s", InputFileList[lineInfo.FileIndex].c_str(), lineInfo.Row, lineInfo.Col, str, __VA_ARGS__);

#endif // end if KALE_ERROR






