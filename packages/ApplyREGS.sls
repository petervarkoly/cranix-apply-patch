#############################################################################
# SLS: ApplyREgs
# Copyright (c) Helmuth Varkoly, Nuermberg, Germany.
# All rights reserved.
#
# Author:               Helmuth Varkoly
#
# Description:          SLS to use with OSS's softwaremanagement              
###############################################################################
copy_regs:
  file.recurse:
    - source: salt://REGS
    - name: "C:\\salt\\var\\REGS\\"

apply_regs:
  cmd.run:
    - onchanges: 
      - copy_regs
    - names:  
      - regedit /s "C:\\salt\\var\\REGS\\AllowUserDriverInstall.reg"
      - regedit /s "C:\\salt\\var\\REGS\\ForceSpooling.reg"
#     - regedit /s "C:\\salt\\var\\REGS\\PointPrintHKCU.reg"
#     - regedit /s "C:\\salt\\var\\REGS\\PointPrintHKLM.reg"
#     - regedit /s "C:\\salt\\var\\REGS\\TurnOfDefManagement.reg"
