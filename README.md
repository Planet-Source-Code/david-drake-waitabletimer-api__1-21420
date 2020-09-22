<div align="center">

## WaitableTimer API


</div>

### Description

<BR>

WaitableTimer API<BR>

This demo demonstrates how to use the WaitableTimer API in Windows. A WaitableTimer is very similar to the Sleep API. You can use this API to pause your application for a set amount of time, without taking up any CPU cycles. The benefit of a WaitableTimer over the Sleep API is that WaitableTimers allow your application to still receive events during the wait, while the Sleep command will freeze your app, queuing all events until the sleep interval has expired. <BR><BR>

Demo<BR>

This demo shows you the difference between a 5 second wait using the Sleep API compared with a WaitableTimer. You will notice that while sleeping your form will not respond to any events, such as minimizing the form or re-painting if the form gets covered by another window. While using a WaitableTimer, the app remains completely responsive to all these Windows events!<BR><BR>

Finally, this demo provides an easy to use class called clsWaitableTimer, which completely encapsulates the WaitableTimer API. All you will need to do to take advantage of this API is to call the method Wait, passing in the number of milliseconds you want to wait.<BR><BR>

Enjoy and don't forget to vote!
 
### More Info
 


<span>             |<span>
---                |---
**Submitted On**   |2001-02-23 08:52:52
**By**             |[David Drake](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByAuthor/david-drake.md)
**Level**          |Intermediate
**User Rating**    |4.9 (89 globes from 18 users)
**Compatibility**  |VB 5\.0, VB 6\.0
**Category**       |[Miscellaneous](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByCategory/miscellaneous__1-1.md)
**World**          |[Visual Basic](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByWorld/visual-basic.md)
**Archive File**   |[CODE\_UPLOAD15647312001\.zip](https://github.com/Planet-Source-Code/david-drake-waitabletimer-api__1-21420/archive/master.zip)








