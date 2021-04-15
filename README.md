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

(step 6) It will put ones renamed for ALLPCB in the directory.



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

- https://www.allpcb.com/sns/eagle-drc-and-gerber-files_4840.html


# [Credits]
(C) 2021, DIGI-P, NERD.JP, BSD Lite License.
