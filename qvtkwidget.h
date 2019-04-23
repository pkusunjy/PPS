#ifndef QVTKWIDGET_H
#define QVTKWIDGET_H

#include <QWidget>
#include <QTimer>
#include <QPaintEngine>


#include "vtkGUISupportQtModule.h"
#include "QVTKInteractor.h"

class QVTKInteractorAdapter;

class vtkRenderWindow;
#include <vtkConfigure.h>
#include <vtkToolkits.h>
class vtkImageData;

#include "QVTKWin32Header.h"


namespace Ui {
class QVTKWidget;
}

class QVTKWidget : public QWidget
{
    Q_OBJECT

public:
    explicit QVTKWidget(QWidget *parent = 0);
    ~QVTKWidget();

    virtual void SetRenderWindow(vtkRenderWindow*);


    QPaintEngine* paintEngine() const override;

protected Q_SLOTS:
    virtual void doDeferredRender();

protected:
    vtkRenderWindow* mRenWin;
    bool useTdx;
    QPaintEngine* mPaintEngine;

protected:
    vtkImageData* mCachedImage;
    bool cachedImageCleanFlag;
    bool automaticImageCache;
    double maxImageCacheRenderRate;
    QVTKInteractorAdapter* mIrenAdapter;
    bool mDeferRenderInPaintEvent;

private:
    Ui::QVTKWidget *ui;
    QVTKWidget & operator=(QVTKWidget const&) = delete;
    QVTKWidget(const QVTKWidget&) = delete;

    unsigned long renderEventCallbackObserverId;

    void renderEventCallback();
    QTimer mDeferedRenderTimer;
};

#endif // QVTKWIDGET_H
