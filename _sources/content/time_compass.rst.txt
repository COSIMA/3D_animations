===========
Month clock
===========

The final version of the provided animations in this repository contain a month clock that rotates with the corresponding month shown in the video.

.. figure:: time_compass.png
    :alt: Sea Surface Salinity.
    :width: 50%

This was done as a post-rendering step, where for each rendered raw video, a clock was creating using the blender file to match the framerate for each year of the given dataset. For example for a daily dataset, the month indicator was animated to rotate 360° in 365 days. 

.. important:: This method does not provide the time accurately, for a precise time, it is suggested to use `datetimes` rather than this month clock.

The file to generate this month clock can be downloaded by `clicking here <https://github.com/COSIMA/3D_animations/raw/main/extras/time_compass.blend>`_

.. note:: This clock will be automatically implemented in a future version of BlenderNC, however, in the meantime, it will be manually added to the animations of this repository.
