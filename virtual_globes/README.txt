Webgl Model Viewer

- A pure html & javascript model viewer for showing off your models.
- Uses a modified (fixed) version of the GLGE WebGL library.
- Works with single object Wavefront .obj files, and png or jpg color and specmap textures.


How to use

Put it on your webserver and go to:
modelviewer.html?obj=/models/japanknife.obj&tex=/models/japanknife.jpg&spec=/models/japanknife_spec.jpg



Url parameters

obj: path to the obj file (required)
tex: path to color texture image (optional, texture specified in the mtl is used by default)
spec: path to specularity texture image (optional, uses material settings from color material)
bg: custom background color, eg: 000 or 4c4c4c. (optional)


