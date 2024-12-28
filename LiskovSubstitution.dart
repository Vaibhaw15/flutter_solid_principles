abstract class Animal{
  void makeSound();
}

class Lion extends Animal{
  @override
  void makeSound() {
    print('roar!');
  }
}

void makeAnimalSound(Animal animal){
   animal.makeSound();
} 

void main(){
  Animal animal = Lion();
  makeAnimalSound(animal);

  Lion lion = Lion();
  makeAnimalSound(lion);
}