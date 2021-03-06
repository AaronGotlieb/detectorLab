pro plotss
;signal to noise plots 
; imports all images for program to manipulate and saves in an array
  sum1 = readfits('004SUM.fits')
  sum2 = readfits('008SUM.fits')
  sum3 = readfits('012SUM.fits')
  sum4 = readfits('016SUM.fits')
  sum5 = readfits('020SUM.fits')
  sum6 = readfits('024SUM.fits')
  sum7 = readfits('028SUM.fits')
  sum8 = readfits('032SUM.fits')
  sum9 = readfits('036SUM.fits')
  sum10 = readfits('040SUM.fits')
  sum11 = readfits('044SUM.fits')
  sum12 = readfits('048SUM.fits')
  sum13 = readfits('052SUM.fits')
  sum14 = readfits('056SUM.fits')
  sum15 = readfits('060SUM.fits')
  diff1 = readfits('004DIFF.fits')
  diff2 = readfits('008DIFF.fits')
  diff3 = readfits('012DIFF.fits')
  diff4 = readfits('016DIFF.fits')
  diff5 = readfits('020DIFF.fits')
  diff6 = readfits('024DIFF.fits')
  diff7 = readfits('028DIFF.fits')
  diff8 = readfits('032DIFF.fits')
  diff9 = readfits('036DIFF.fits')
  diff10 = readfits('040DIFF.fits')
  diff11 = readfits('044DIFF.fits')
  diff12 = readfits('048DIFF.fits')
  diff13 = readfits('052DIFF.fits')
  diff14 = readfits('056DIFF.fits')
  diff15 = readfits('060DIFF.fits')
  
  arrsum = fltarr(15)
; x axis, used to calculate mean signal
  arrsum[0] = mean(sum1)
  arrsum[1] = mean(sum2)
  arrsum[2] = mean(sum3)
  arrsum[3] = mean(sum4)
  arrsum[4] = mean(sum5)
  arrsum[5] = mean(sum6)
  arrsum[6] = mean(sum7)
  arrsum[7] = mean(sum8)
  arrsum[8] = mean(sum9)
  arrsum[9] = mean(sum10)
  arrsum[10] = mean(sum11)
  arrsum[11] = mean(sum12)
  arrsum[12] = mean(sum13)
  arrsum[13] = mean(sum14)
  arrsum[14] = mean(sum15)
  
  arrvar = fltarr(15)
; calculates varience for the y axis
  arrvar[0] = variance(diff1)
  arrvar[1] = variance(diff2)
  arrvar[2] = variance(diff3)
  arrvar[3] = variance(diff4)
  arrvar[4] = variance(diff5)
  arrvar[5] = variance(diff6)
  arrvar[6] = variance(diff7)
  arrvar[7] = variance(diff8)
  arrvar[8] = variance(diff9)
  arrvar[9] = variance(diff10)
  arrvar[10] = variance(diff11)
  arrvar[11] = variance(diff12)
  arrvar[12] = variance(diff13)
  arrvar[13] = variance(diff14)
  arrvar[14] = variance(diff15)
  ;plots values
  plot,arrsum,arrvar , title = 'Detector Lab', psym = 1
  
  end
