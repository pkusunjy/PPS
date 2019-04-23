#-------------------------------------------------
#
# Project created by QtCreator 2019-04-19T09:41:38
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = PPS
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp \
        mainui.cpp

HEADERS += \
        mainui.h

FORMS += \
        mainui.ui

# For VTK
INCLUDEPATH += $$PWD/Thirdparty/VTK/include/vtk-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkChartsCore-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkCommonColor-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkCommonComputationalGeometry-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkCommonCore-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkCommonDataModel-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkCommonExecutionModel-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkCommonMath-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkCommonMisc-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkCommonSystem-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkCommonTransforms-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkDICOMParser-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkDomainsChemistry-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkDomainsChemistryOpenGL2-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkdoubleconversion-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkexodusII-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkexpat-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersAMR-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersCore-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersExtraction-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersFlowPaths-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersGeneral-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersGeneric-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersGeometry-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersHybrid-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersHyperTree-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersImaging-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersModeling-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersParallel-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersParallelImaging-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersPoints-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersProgrammable-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersSelection-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersSMP-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersSources-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersStatistics-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersTexture-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersTopology-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkFiltersVerdict-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkfreetype-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkGeovisCore-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkgl2ps-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkglew-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkGUISupportQt-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkGUISupportQtSQL-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkhdf5-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkhdf5_hl-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkImagingColor-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkImagingCore-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkImagingFourier-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkImagingGeneral-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkImagingHybrid-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkImagingMath-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkImagingMorphological-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkImagingSources-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkImagingStatistics-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkImagingStencil-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkInfovisCore-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkInfovisLayout-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkInteractionImage-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkInteractionStyle-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkInteractionWidgets-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOAMR-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOAsynchronous-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOCityGML-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOCore-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOEnSight-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOExodus-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOExport-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOExportOpenGL2-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOExportPDF-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOGeometry-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOImage-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOImport-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOInfovis-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOLegacy-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOLSDyna-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOMINC-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOMovie-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIONetCDF-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOParallel-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOParallelXML-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOPLY-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOSegY-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOSQL-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOTecplotTable-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOVeraOut-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOVideo-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOXML-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkIOXMLParser-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkjpeg-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkjsoncpp-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtklibharu-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtklibxml2-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtklz4-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtklzma-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkmetaio-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkNetCDF-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkogg-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkParallelCore-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkpng-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkproj-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkpugixml-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkRenderingAnnotation-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkRenderingContext2D-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkRenderingContextOpenGL2-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkRenderingCore-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkRenderingFreeType-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkRenderingGL2PSOpenGL2-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkRenderingImage-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkRenderingLabel-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkRenderingLOD-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkRenderingOpenGL2-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkRenderingQt-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkRenderingVolume-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkRenderingVolumeOpenGL2-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtksqlite-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtksys-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtktheora-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtktiff-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkverdict-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkViewsContext2D-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkViewsCore-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkViewsInfovis-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkViewsQt-8.2
LIBS        += -L$$PWD/Thirdparty/VTK/lib/ -lvtkzlib-8.2
