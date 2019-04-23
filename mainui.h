#ifndef MAINUI_H
#define MAINUI_H

#include <QMainWindow>

namespace Ui {
class mainui;
}

class mainui : public QMainWindow
{
    Q_OBJECT

public:
    explicit mainui(QWidget *parent = nullptr);
    ~mainui();

public slots:
    void paint();

private:
    Ui::mainui *ui;
};

#endif // MAINUI_H
