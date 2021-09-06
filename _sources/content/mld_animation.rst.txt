===========================
Mixed layer depth animation
===========================

This example animates the mixed layer depth (MLD) from the ACCESS-OM2 global ocean-sea ice model. 
The files loaded for these animations are located at:

.. code-block:: bash

    /g/data/cj50/access-om2/raw-output/access-om2-01/01deg_jra55v140_iaf/output2*/ocean/ocean-2d-mld-1-daily-mean-ym_20*.nc

and the variable name is:

.. code-block:: bash

    mld

.. note::
    The path contains the wildcard ``*``  which allows the load of all the files contained in the directories ``output2*`` and the netCDF files named ``ocean-2d-mld-1-daily-mean-ym_20*.nc```


The animation shows the mixed layer depth on the sphere. The continents are displaced to their given elevation and the texture displayed over the continents corresponds to the `natural earth  <https://www.naturalearthdata.com/>`_ dataset. A snapshot of the animation looks like:

.. figure:: mld_test.png
    :alt: Mixed Layer Depth.
    
Download
--------

The provided animation can be found in `YouTube <https://youtu.be/9vPr_PlYhvg>`_. Otherwise, you can directly donwload the `mov file <https://github.com/COSIMA/3D_animations/raw/main/mld/mld_final0001-2000.mov>`_ or the `mp4 file <https://github.com/COSIMA/3D_animations/raw/main/mld/mld_final0001-2000.mp4>`_.

.. raw:: html

    <iframe width="560" height="315" src="https://www.youtube.com/embed/9vPr_PlYhvg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

.. note:: The provided animation has been edited to invert the colormap legends and replace the date format from a string to a clock-like calendar. 

Reproduce Animation
-------------------

To reproduce the animation, make sure to install ``Blender`` and  ``BlenderNC`` by following the instructions at :ref:`installation`, and download this animation ``access_mld.blend`` file by `clicking here <https://github.com/COSIMA/3D_animations/raw/main/mld/access_mld.blend>`_.

After downloading the blender file and opening it in VDI or your rendering computer of preference, make sure to reconnect the BlenderNC nodes by following the instruction below:

1. Navigate to the BlenderNC nodetree:
   
2. Disconnect the output of the input node to update the nodetree:

3. Select the ``mld`` variable:

4. Connect all the nodes in order:
   
5. Render image:

Now you can modify the animation: anything from the lighting, the material, colorbar, to the dataset used for the animation. 
