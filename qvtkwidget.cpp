#include "qvtkwidget.h"
#include "ui_qvtkwidget.h"

#include "QVTKPaintEngine.h"
#include "QVTKInteractorAdapter.h"
#include "QVTKInteractor.h"

#include "qevent.h"
#include "qapplication.h"
#include "qpainter.h"
#include "qsignalmapper.h"
#include "qtimer.h"
#include "vtkRenderingOpenGLConfigure.h"

#include <Windows.h>
#include <QSysInfo>

#include "vtkInteractorStyleTrackballCamera.h"
#include "vtkRenderWindow.h"
#include "vtkCommand.h"
#include "vtkOStrStreamWrapper.h"
#include "vtkObjectFactory.h"
#include "vtkCallbackCommand.h"
#include "vtkConfigure.h"
#include "vtkUnsignedCharArray.h"
#include "vtkImageData.h"
#include "vtkPointData.h"
#include "vtkRenderer.h"
#include "vtkRendererCollection.h"

QVTKWidget::QVTKWidget(QWidget *parent) :
    QWidget(parent), mRenWin(nullptr), cachedImageCleanFlag(false), automaticImageCache(false), maxImageCacheRenderRate(1.0),
    mDeferRenderInPaintEvent(false), renderEventCallbackObserverId(0), ui(new Ui::QVTKWidget)
{
    this->useTdx = false;
    this->setAttribute(Qt::WA_NoBackground);
    this->setAttribute(Qt::WA_PaintOnScreen);
    this->setFocusPolicy(Qt::StrongFocus);
    this->setMouseTracking(true);
    this->setSizePolicy(QSizePolicy(QSizePolicy::Expanding, QSizePolicy::Expanding));

    mPaintEngine = new QVTKPaintEngine;
    this->mCachedImage = vtkImageData::New();
    this->mCachedImage->SetOrigin(0, 0, 0);
    this->mCachedImage->SetSpacing(1, 1, 1);

    mIrenAdapter = new QVTKInteractorAdapter(this);
    this->mDeferedRenderTimer.setSingleShot(true);
    this->mDeferedRenderTimer.setInterval(0);

    this->connect(&this->mDeferedRenderTimer, SIGNAL(timeout()), SLOT(doDeferredRender()));

    ui->setupUi(this);
}

QVTKWidget::~QVTKWidget()
{
    delete ui;
}

QPaintEngine* QVTKWidget::paintEngine() const {
    return mPaintEngine;
}
