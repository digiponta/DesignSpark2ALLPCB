# DesignSpark2ALLPCB
Converting GBR File names from DesignSpark PCB to ones for ALLPCB


# [Warning] 

During debugging


# [How to use]

(step 1) You had installed the Cygwin into your PC.

(Step 2) Execute the Cygwin Terminal.

(Step 3) Change your current directory to ones putting the GBR files from DesignSpark PCB on the Terminal.

(step 4) Execute the cnv_by_cygwin.sh by the Cygwin bash.

(step 5) The cnv_by_cygwin.sh will make the directory 'ALLPCB' in the top of your C Drive.

(step 6) It will put ones renamed for ALLPCB (An example) in the directory.



# [Mapping to ALLPCB]

- Top Layer: "filename.GTL" from "filename - Top Copper.gbr"

- Top Solder Mask: "filename.GTS" from "filename - Top Copper (Resist).gbr"

- Top Silkscreen: "filename.GTO" from "filename - Top Silkscreen.gbr"

- Bottom Layer: "filename.GBL" from "filename - Bottom Copper.gbr"

- Bottom Solder Mask: "filename.GBS" from "filename - Bottom Copper (Resist).gbr"

- Bottom Silk Screen: "filename.GBO" from "filename - Bottom Silkscreen.gbr"

- Board Outline: "filename.GKO" from "filename - Board Outline.gbr"

- Drills: "filename.TXT" from "filename - Drill Data - [Through Hole].drl"



# [References]

* https://www.allpcb.com/sns/eagle-drc-and-gerber-files_4840.html
* https://www.rs-online.com/designspark/elecrowfusionpcbpcbgogo

  * There seems to be the same conviersion way for Elecrow, FusionPCB, PCBGOGO and JLCPCB: 

   (Project name) - Bottom Copper.gbr 　　　　 -> pcb.GBL
   
   (Project name) - Bottom Silkscreen.gbr 　　　-> pcb.GBO
   
   (Project name) - Bottom Solder Mask.gbr 　　-> pcb.GBS
   
   (Project name) - Drill Data – Through Hole.drl  -> pcb.TXT
   
   (Project name) - Top Copper.gbr 　　　　　   -> pcb.GTL
   
   (Project name) - Top Silkscreen.gbr 　　　　  -> pcb.GTO
   
   (Project name) - Top Solder Mask.gbr 　　　  -> pcb.GTS


# [Credits]
(C) 2021, DIGI-P, NERD.JP, BSD Lite License.
