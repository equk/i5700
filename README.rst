i5700
=====

This section has a few scripts I have written for tweaking/hacking the Google Android OS on the Samsung Galaxy i5700

.. code-block:: bash

	Phone: Samsung Galaxy i5700
	CPU: ARM11 800mhz (S3C6400)
	Camera: 3.15 MP (2048×1536) Autofocus
	RAM: 256MB
	OS: Android v2.2 (froyo)

Current ROM
-----------

* Kernel: Linux version 2.6.29
* Camera: Patched 480p mp4
* Root: Superuser 3.0.3.2
* Launcher: Zeam
* Keyboard: ICS Keyboard

dalvik-cache
------------
The script makes the system put dalvik cache into the /cache partition which is 80mb and gets used by various processes for caching & OTA updates (prob don't have those anymore anyway).
The script also removes old system dumps to free space on each reboot of the phone.
The script doesn't make use of slow removable SD Cards (uses fast onboard memory)

.. image:: https://github.com/equk/i5700/raw/master/screenshot.jpg
   :align: center
   :alt: android_screenshot
