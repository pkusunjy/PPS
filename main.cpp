#include "mainui.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    mainui w;
    w.show();

    return a.exec();
}
