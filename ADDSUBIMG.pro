PRO ADD SUBTRACT IMAGES
; Forms sum and dierence images from two selected images
START: les = DIALOG PICKFILE(Title="Select Two Images for Processing", /MULTI-
PLE FILES)
; Check for the right number of images
nles = SIZE(les)
CASE nles[1] OF ; CASE selects among options, based on values of variables
1: BEGIN
1PRINT, "Must select two images" ; Too few, restart le select
GOTO, START
END
2: PRINT, "Will read two images"
ELSE: BEGIN ; if not 1 or 2, restart le selector
PRINT, "Must select two images"
GOTO, START
END
ENDCASE
a = READFITS(les[0], header)
b = READFITS(les[1], header)
; Compute the sum and dierence
di = LONG(a) - LONG(b)
sum = LONG(a) + LONG(b)
; Where do you want to store the processed images?
outle = DIALOG PICKFILE(Title = "Select a lename to store the SUM image")
WRITEFITS, outle, sum, header
outle = DIALOG PICKFILE(Title = "Select a lename to store the DIFF image")
WRITEFITS, outle, di, header
PRINT, "Done!"
END
