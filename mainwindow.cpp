// mainwindow.cpp
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

#include "mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
  // --- UI Components --- //
    ui = new QDeclarativeView;
    ui->setSource(QUrl("qrc:/qml/QuickPG/ui.qml"));
    Root = ui->rootObject();
    ui->rootContext()->setContextProperty("qCall", this);
    ui->setResizeMode(QDeclarativeView::SizeRootObjectToView);

  // --- Window Aattributes --- //
    setAttribute(Qt::WA_TranslucentBackground);
    setStyleSheet("background: transparent;");
    setWindowFlags(Qt::FramelessWindowHint);
    setCentralWidget(ui);
}

void MainWindow::cursor_down()
{
    this->setCursor(QCursor(Qt::ArrowCursor));  // Востанавливает нормальный вид курсора
}

//Функция C++ вызываемая из QML изменяющие курсор при нажатии
void MainWindow::moveCursor()
{
    this->setCursor(QCursor(Qt::SizeAllCursor));    // Изменяет вид курсора при клике на обьект

    positionX = QCursor::pos().x() - this->pos().x();  // Отмечает где вы клацнули мышкой на форме x позицию
    positionY = QCursor::pos().y() - this->pos().y();  // Отмечает где вы клацнули мышкой на форме y позицию
}


//Функция C++ вызываемая из QML премещающие окно
void MainWindow::move_window()
{
    // Перемещаем окно
    this->move(QCursor::pos().x() - positionX, QCursor::pos().y() - positionY);
}

void MainWindow::appResizeXY(){
    resize(width() + (QCursor::pos().x() - width() - this->pos().x()), height() + (QCursor::pos().y() - height() - this->pos().y()));
}

void MainWindow::appQuit(){
    close();
}

void MainWindow::appMin(){
    showMinimized();
}

void MainWindow::appMax(){
    if(this->isMaximized() == true){ showNormal(); }
    else{ showMaximized(); }
}

MainWindow::~MainWindow()
{
    delete ui;
}
