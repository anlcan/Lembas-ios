//
//  Debug.h
//
//  Created by anlcan on 11/10/09.
//  Copyright 2009. All rights reserved.
//

// inspired from iPhone Advanced Projects book.


#if defined (DEBUG)


#define _ASSERT(STATEMENT) do { assert(STATEMENT); } while(0)
#define _NSLog(format, ...) fprintf(stdout, "%s  <Line %d> %s\n",__FUNCTION__, __LINE__,  [[NSString stringWithFormat:format,## __VA_ARGS__ ]UTF8String]);		// always needs NSString as the first parameters

#else

#define _ASSERT(STATEMENT) while(0) {}
#define _NSLog(format, ...)  while(0) { }

#endif 

// conditional logging
#define _NSLogC(CONDITIONAL, format, ...)		if (CONDITIONAL == YES) {_NSLog(format, ##__VA_ARGS__);}

