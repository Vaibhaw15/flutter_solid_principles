
//abstraction
abstract interface class Bulb{
   void turnOn();
   void turnOff();
}

//Low - level module
class IncandescentBulb implements Bulb{
  @override
  void turnOn() {
    print('IncandescentBulb bulb turned on');
  }
  @override
  void turnOff() {
     print('IncandescentBulb bulb turned off');
  }
}

class LedBulb implements Bulb{
  @override
  void turnOn() {
    print('LedBulb bulb turned on');
  }
  @override
  void turnOff() {
     print('LedBulb bulb turned off');
  }
}

class Room{
  Bulb bulb;
  Room(this.bulb);
  
  void switchLigthOn(){
    bulb.turnOn();
  }
  void switchLigthOff(){
    bulb.turnOff();
  }
}

void main(){
  LedBulb led = LedBulb();
  IncandescentBulb incandescentBulb = IncandescentBulb();
  Room room = Room(led);
  Room room1 = Room(incandescentBulb);
  room.switchLigthOn();
  room.switchLigthOff();
  room1.switchLigthOn();
  room1.switchLigthOff();
}

