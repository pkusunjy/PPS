#include "mainui.h"
#include "ui_mainui.h"

#include "vtkAutoInit.h"
VTK_MODULE_INIT(vtkRenderingOpenGL2);
VTK_MODULE_INIT(vtkInteractionStyle);

#include "QVTKOpenGLWidget.h"
#include "vtkCylinderSource.h"
#include "vtkPolyDataMapper.h"
#include "vtkRenderer.h"
#include "vtkSmartPointer.h"
#include "vtkRenderWindow.h"
#include "vtkGenericOpenGLRenderWindow.h"

mainui::mainui(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::mainui)
{
    ui->setupUi(this);
    auto cylinderSource = vtkSmartPointer<vtkCylinderSource>::New();
    cylinderSource->SetCenter(0, 0, 0);
    cylinderSource->SetRadius(5.0);
    cylinderSource->SetHeight(7.0);
    cylinderSource->SetResolution(100);

    auto mapper = vtkSmartPointer<vtkPolyDataMapper>::New();
    mapper->SetInputConnection(cylinderSource->GetOutputPort());

    auto actor = vtkSmartPointer<vtkActor>::New();
    actor->SetMapper(mapper);

    auto renderer = vtkSmartPointer<vtkRenderer>::New();
    renderer->AddActor(actor);

    auto win = vtkSmartPointer<vtkGenericOpenGLRenderWindow>::New();
    win->AddRenderer(renderer);

    ui->display3d->SetRenderWindow(win);
    ui->display3d->update();
}

mainui::~mainui()
{
    delete ui;
}

void mainui::paint() {
    ui->textEdit->append("Hello vtk!");

}

