// DoubleClick is open source under the MIT License.
//
// TERMS OF USE - DoubleClick MODULE
//
// Copyright (c) 2018-present Ivan Mogilko
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of
// this software and associated documentation files (the "Software"), to deal in
// the Software without restriction, including without limitation the rights to
// use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
// the Software, and to permit persons to whom the Software is furnished to do so,
// subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#ifndef __DOUBLECLICK_MODULE__
#define __DOUBLECLICK_MODULE__

#define DOUBLECLICK_VERSION_00_01_00_00


// A maximal time passed between two clicks while they are still considered a sequence
#define DOUBLECLICK_DEFAULT_TIMEOUT      300

struct DoubleClick
{
  /// Get/set maximal period (in milliseconds) between two clicks while they still considered a sequence
  import static attribute int Timeout;
  
  readonly import static attribute bool Event[];
  
  /// Reset double-click event; useful if you have several modules checking for double-click in order
  import static void ClaimThisEvent();
  // NOTE: cannot name it just ClaimEvent, because 3.2.1 compiler has a bug that prevents from naming
  // struct members identical to built-in global functions and variables.
  
  /// Reset the module state. Makes it forget the recorded information about mouse events.
  /// May become useful if you have some issues when switching between rooms or game modes.
  import static void Reset();
};

#endif  // __DOUBLECLICK_MODULE__
