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
    - source: salt://regs
    - name: "C:\\salt\\var\\regs\\"

apply_regs:
  oss_client.applyRegs:
    - onchanges: 
      - copy_regs
