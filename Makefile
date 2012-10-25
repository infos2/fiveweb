# FiveWeb makefile

all : .\lib\fiveweb.lib

PRG_OBJS = obj\fiveweb.obj 

.\lib\fiveweb.lib : $(PRG_OBJS)

obj\fiveweb.obj : obj\fiveweb.c
	c:\bcc582\bin\bcc32 -c -I./../harbour/include -o$@ $<
	c:\bcc582\bin\tlib lib\fiveweb -+ $@

obj\fiveweb.c : .\source\function\fiveweb.prg
	.\..\harbour\bin\harbour $< -o.\$@ -n -I.\..\harbour\include -I.\include