<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio FileVersion="4.9"?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1">
    <Task Name="TaskFast" Source="Kontrol.TaskFast.TaskFast.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="FastMeter" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <Task Name="Program" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <Task Name="SslClient" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <Task Name="Server" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <Task Name="Client" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <Task Name="QDTA_IO" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#2">
    <Task Name="Protection" Source="Kontrol.Protection.Protection.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Control" Source="Kontrol.Control.Control.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#3">
    <Task Name="WatchDog" Source="WatchDog.WatchDog.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="System" Source="Kontrol.System.System.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Hardware" Source="Kontrol.Hardware.Hardware.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="ProtUpdate" Source="Kontrol.Protection.ProtUpdate.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Command" Source="Kontrol.Command.Command.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="cb52" Source="Kontrol.CB52.cb52.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#4">
    <Task Name="Auto" Source="Auto.Auto.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#5" />
  <TaskClass Name="Cyclic#6">
    <Task Name="MDB_Comand" Source="Auto.Modbus.MDB_Comando.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MDB_Status" Source="Auto.Modbus.MDB_Status.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MDB_Alarme" Source="Auto.Modbus.MDB_Alarme.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MDB_Medida" Source="Auto.Modbus.MDB_Medida.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="MDB_Parame" Source="Auto.Modbus.MDB_Parametro.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#7">
    <Task Name="Event" Source="Kontrol.Event.Event.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Comm" Source="Comm.Comm.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#8">
    <Task Name="File" Source="Kontrol.File.File.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <Binaries>
    <BinaryObject Name="TCData" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="udbdef" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="ashwd" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="sysconf" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="asfw" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="arconfig" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="iomap" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Role" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="User" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="ashwac" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="OpcUaMap" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccddbox" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="ihm01" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="ihm02" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="ihm03" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccpopup" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcpfx20" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcctrend" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccstr" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcmgr" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcpdsw" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcpdvnc" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccline" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccovl" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="arial" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcdsint" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccnum" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcalarm" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vctcal" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccbtn" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcnet" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccbmp" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcrt" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcshared" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccdt" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcgclass" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcfntttf" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcbclass" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcdsloc" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcfile" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="arialbd" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcctext" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccshape" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccgauge" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcpkat" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="10111548$f" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Visu02" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Visu03" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Visu01" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccbar" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccslider" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcchspot" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccurl" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vccalarm" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcchtml" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="vcxml" Source="" Memory="UserROM" Language="Binary" />
  </Binaries>
  <Libraries>
    <LibraryObject Name="operator" Source="Libraries.operator.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="runtime" Source="Libraries.runtime.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="LoopConR" Source="Libraries.LoopConR.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="sys_lib" Source="Libraries.sys_lib.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="brsystem" Source="Libraries.brsystem.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsTCP" Source="Libraries.AsTCP.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsIecCon" Source="Libraries.AsIecCon.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="astime" Source="Libraries.astime.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsBrStr" Source="Libraries.AsBrStr.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsARCfg" Source="Libraries.AsARCfg.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsXml" Source="Libraries.AsXml.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="FileIO" Source="Libraries.FileIO.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsIOAcc" Source="Libraries.AsIOAcc.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="standard" Source="Libraries.standard.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsSem" Source="Libraries.AsSem.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="IecCheck" Source="Libraries.IecCheck.lby" Memory="UserROM" Language="IEC" Debugging="true" />
    <LibraryObject Name="DRV_mbus" Source="Libraries.DRV_mbus.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="dvframe" Source="Libraries.dvframe.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="DataObj" Source="Libraries.DataObj.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="Pgs0985" Source="Libraries.Kontrol.Pgs0985.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="PgsAI4622" Source="Libraries.Kontrol.PgsAI4622.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="PgsAO4622" Source="Libraries.Kontrol.PgsAO4622.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="PgsAuto" Source="Libraries.Kontrol.PgsAuto.lby" Memory="UserROM" Language="IEC" Debugging="true" />
    <LibraryObject Name="PgsCfgNet" Source="Libraries.Kontrol.PgsCfgNet.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="PgsComm" Source="Libraries.Kontrol.PgsComm.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="PgsControl" Source="Libraries.Kontrol.PgsControl.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="PgsEvent" Source="Libraries.Kontrol.PgsEvent.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="PgsFileSys" Source="Libraries.Kontrol.PgsFileSys.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="PgsProt" Source="Libraries.Kontrol.PgsProt.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="PgsTag" Source="Libraries.Kontrol.PgsTag.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="PgsTagLink" Source="Libraries.Kontrol.PgsTagLink.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="PgsTelnet" Source="Libraries.Kontrol.PgsTelnet.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="vcresman" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="ashw" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
  </Libraries>
</SwConfiguration>