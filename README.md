# ATMatCreator
April Tag Mat Creator code written for CMSC828T

## Pre-requisites
### Capture Background Image
1. Install [Fireshot Google Chrome plugin](https://chrome.google.com/webstore/detail/take-webpage-screenshots/mcbpblocgmgfnpjjppndjkmgjaogfceg?hl=en) (recommended) or [Fireshot Firefox plugin](https://addons.mozilla.org/en-US/firefox/addon/fireshot/) *(you need this to download high res background images)*.
2. Go to [Chengfolio](http://www.chengfolio.com/google_map_customizer#satellitemap).
3. Select Map type to `Satellite Map`.
4. Zoom to level of detail desired *(Depends on how high you want to fly)*.
5. Select the necessary resoolution - 5000x5000 recommended on a 64GB RAM PC. Try the highest resolution for which you don't fail to capture.
6. Click capture entire page on Fireshot plugin and save as `pdf`.

Reference: [How to export High quality Google Map Images](http://www.chengfolio.com/blog/how_to_customize_google_map_and_export_high_quality_images_using_google_map_customizer)

### Download AprilTag Library
1. Download *36h11* Tag family (recommended) from [UMich EECS repository](https://april.eecs.umich.edu/media/apriltag/tag36h11.tgz)
2. Extract the files from the downloaded `tar`.
***

## Running ATMatCreator Code
1. Open Wrapper.m <br>

For the first time running the code:
- Change `%InstallDeps;` to `InstallDeps`
- Change `%PS2PDF;` to  `PS2PDF;`
- Change `ExtractPNGsFlag = 0;` to `ExtractPNGsFlag = 1;`
- Set `TagSize`, `SpaceBetweenTags` and `GridSize` to desired values (Note all sizes are in m)
