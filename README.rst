=============
3D_animations
=============

This repository contains examples of 3D animations generated using `blender <https://www.blender.org>`_ and `BlenderNC <https://github.com/blendernc/blendernc>`_. 

Each folder included within this repository has the following structure:

- Example Name
 
  * example_blender_file.blend
  * example_animation.mp4 
  * example_animation.mov
  * example_readme.rst

All the animations are generated using `VDI <https://nci.org.au>`_ and data located in gdata.

To modify any of these animations, make sure you install Blender in VDI:

1. Within VDI download Blender by navigating within a browser to https://www.blender.org/download/, optionally you can run the following command in the terminal:

.. code-block:: bash

    wget https://ftp.nluug.nl/pub/graphics/blender/release/Blender2.93/blender-2.93.1-linux-x64.tar.xz

2. Decompress file:

.. code-block:: bash

    tar -xf blender-2.93.1-linux-x64.tar.xz

.. important:: Make sure you have space within VDI, otherwise, you can install blender in gdata. 

3. Navigate to the decompressed folder:

.. code-block:: bash

    cd blender-2.93.1-linux-x64/

4. Now you can run Blender by simply executing within the terminal or double click the ``blender`` executable.

.. code-block:: bash

    user@vdi-nXX blender-2.93.1-linux-x64]$ ls

    2.93 blender-softwaregl blender-thumbnailer.py license
    blender blender.svg copyright.txt readme.html
    blender.desktop blender-symbolic.svg lib

    user@vdi-nXX blender-2.93.1-linux-x64]$ ./blender


Optionally, you can compile Blender from scratch, see information at the `Blender Wiki <https://wiki.blender.org/wiki/Building_Blender/Linux/Ubuntu>`_:

1. Download source code:

.. code-block:: bash

    mkdir ~/blender-git
    cd ~/blender-git
    git clone https://git.blender.org/blender.git

2. Update and Build 

.. code-block:: bash

    cd ~/blender-git/blender
    make update
    make

3. Similar, now you can run Blender by simply executing within the terminal or double click the ``blender`` executable.

.. code-block:: bash

    user@vdi-nXX blender-2.93.1-linux-x64]$ ls

    2.93 blender-softwaregl blender-thumbnailer.py license
    **blender** blender.svg copyright.txt readme.html
    blender.desktop blender-symbolic.svg lib

    user@vdi-nXX blender-2.93.1-linux-x64]$ ./blender


It's recommended to create an alias within your ``.bash_profile``, and an env variable containing the path to the ``blender`` executable:

.. code-block:: bash

    echo "alias blender='$(pwd)/blender'" >> ~/.bash_profile
    BLENDER_PATH=$(pwd)

BlenderNC
=========

Before using Blender to create animations, we will install BlenderNC. More information about the installation can be found at `BlenderNC ReadTheDocs <https://blendernc.readthedocs.io/en/latest/install.html>`_.

.. important:: BlenderNC is supported by versions of Blender > 2.80

1. Clone BlenderNC:

.. code-block:: bash

    git clone https://github.com/blendernc/blendernc.git
    cd blendernc


2. Install required packages within the Blender python distribution:

.. code-block:: bash

    on/bin/pythonX.Xm -m pip install -r requirements.txt

3. Clone the ``zip`` installable, **do not unzip the file**. 

.. code-block:: bash

    git clone https://github.com/blendernc/blendernc-zip-install/raw/master/blendernc.zip


4. In Blender go to the user preferences and open the Addons tab.

5. Once there, click Install add-on from file (bottom right corner)

6. Navigate to the downloaded zip, select it, and click in install.

7. Finally, check the box next to the BlenderNC addon, to enable it