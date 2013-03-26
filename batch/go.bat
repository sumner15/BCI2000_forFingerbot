#! ../prog/BCI2000Shell
@cls & ..\prog\BCI2000Shell %0 %* #! && exit /b 0 || exit /b 1


change directory $BCI2000LAUNCHDIR
show window; set title ${extract file base $0}
reset system
startup system localhost

#start executable SignalGenerator        --local --FileFormat=Null
start executable gUSBampSource64Release --local --FileFormat=Null
start executable DummySignalProcessing  --local
start executable DummyApplication       --local

wait for connected

#load parameterfile ../parms/gUSBamp-Cap16.prm
 load parameterfile ../parms/gUSBampsAAAA-Cap64.prm

set parameter AcquisitionMode 2

setconfig

#set state Running 1
