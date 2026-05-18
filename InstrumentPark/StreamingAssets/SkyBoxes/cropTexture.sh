#!/bin/bash
# Cut out the central square of a Stellarium screenshot for use in a Unity Skybox. This is needed to be done before playing because of memory problems in WebGL.
TARGETSIZE=512
width=`identify -format "%[fx:w]" $1`
height=`identify -format "%[fx:h]" $1`
imgfactor=`echo "scale=3; $width.0 / $height.0" | bc`
shift=`echo "scale=1; ( $imgfactor - 1 ) * 0.5 * $height" | bc`
echo Image $1 is $width x $height --- Factor: $imgfactor  ... Shift: $shift
mogrify  -crop ${height}x${height}+${shift}+0  -resize ${TARGETSIZE}x${TARGETSIZE} +repage  $1