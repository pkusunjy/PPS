#ifndef DISPLAY3D_H
#define DISPLAY3D_H

#include <QWidget>

namespace Ui {
class Display3d;
}

class Display3d : public QWidget
{
    Q_OBJECT

public:
    explicit Display3d(QWidget *parent = 0);
    ~Display3d();

private:
    Ui::Display3d *ui;
};

#endif // DISPLAY3D_H
