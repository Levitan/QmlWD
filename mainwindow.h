// mainwindow.h
//
// Copyright 2013 Vitaly Levitan <vlevitan91@gmail.com>
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
// MA 02110-1301, USA.
//

#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtDeclarative/QDeclarativeView>
#include <QtDeclarative/QDeclarativeContext>
#include <QGraphicsObject>

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

    Q_INVOKABLE void move_window();
    Q_INVOKABLE void moveCursor();
    Q_INVOKABLE void cursor_down();
    Q_INVOKABLE void appQuit();
    Q_INVOKABLE void appMin();
    Q_INVOKABLE void appMax();
    Q_INVOKABLE void appResizeXY();

private:
    QDeclarativeView *ui;
    QObject *Root;
    int positionX, positionY;
};

#endif // MAINWINDOW_H
