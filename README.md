# ATMatCreator
April Tag Mat Creator code written for CMSC828T

## Pre-requisites

### Capture Background Image
* Install Fireshot plugin on chrome/firefox (you need this to download high res background images)
* Go to http://www.chengfolio.com/google_map_customizer#satellitemap
* Select Map type to Satellite Map
* Zoom to level of detail desired (Depends on how high you want to fly)
* Select the necessary resoolution - 5000x5000 recommended on a 64GB RAM PC. Try the highest resolution for which you don't fail to capture.
* Click capture entire page on Fireshot plugin and save as pdf

Reference: <br>
http://www.chengfolio.com/blog/how_to_customize_google_map_and_export_high_quality_images_using_google_map_customizer

### Download AprilTag Library
* Download 36h11 Tag family  (recommended) from https://april.eecs.umich.edu/media/apriltag/tag36h11.tgz
* Extract the files from the downloaded tar

### Running ATMatCreator Code
* Open Wrapper.m <br>
For the first time running the code <br>
* Change `%InstallDeps;` to `InstallDeps`
* Change `%PS2PDF;` to  `PS2PDF;`
* Change `ExtractPNGsFlag = 0;` to `ExtractPNGsFlag = 1;`
* Set `TagSize`, `SpaceBetweenTags` and `GridSize` to desired values (Note all sizes are in m)

