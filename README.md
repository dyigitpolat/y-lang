# y-lang
A toy parser for a minimalistic language Y()

# Y() Language Syntax

Y(), Y( Y() Y() ), and Y( Y() Y(Y()) Y() ) are valid Y() programs.

# What they compile to:

Y(): 0()
Y( Y() Y() ): 0( 1() 1() )
Y( Y() Y(Y()) Y() ): 0( 1() 1( 2() ) 1() )


# How to run:

```bash
$ make
$ ./bin/yprogram < example/a.ylang
$ ./bin/yprogram < example/b.ylang 
```