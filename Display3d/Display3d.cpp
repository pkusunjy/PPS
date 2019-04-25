#include "Display3d.h"
#include "ui_Display3d.h"

Display3d::Display3d(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Display3d)
{
    ui->setupUi(this);
}

Display3d::~Display3d()
{
    delete ui;
}
