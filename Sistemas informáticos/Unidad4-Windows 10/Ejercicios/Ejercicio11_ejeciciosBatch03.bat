@ECHO OFF

IF NOT EXIST %1 GOTO :error
IF NOT EXIST %2 GOTO :error

:copia
COPY %1 %2
ECHO La copia se ha realizado con exito.
GOTO :salida

:error
ECHO La copia ha fallado.

:salida
PAUSE