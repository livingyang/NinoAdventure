NinoAdventure
=============

## Nino 寻宝记
讲诉一个辛勤的程序员，寻求宝物的故事

## 具体需求
屏幕上有一个Nino，一个宝物
由于某些原因，Nino只会往一个方向寻找宝物
如果方向刚好正确，则可以发现宝物，若是不对，则Nino将哭着回家

## 重要文件说明
* app/lib/00-state-machine.coffee - 通用的有限状态机框架
* app/lib/01-Nino.coffee - Nino的数据模型，包含所有状态，以及个个状态之间的跳转方式
* test/ninoSpec.coffee - Nino模型的单元测试用例
* app/lib/02-HelloWorldLayer.coffee - 游戏的界面

## 使用方式
编辑 app/lib/02-HelloWorldLayer.coffee 文件，按照序号将注释打开，即可查看结果
