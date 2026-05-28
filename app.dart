void main() {
  Moto m = new Moto(200);
  m.marca = "yamaha";
  m.modelo = 2021;
  m.velocidad = 250;
  m.getInfo();
  print(m.estaMovimiento());
  m.tipo();
  Camion c = new Camion(3000);
  c.marca = "audi";
  c.modelo = 2020;
  c.velocidad = 300;
  c.getInfo();
  print(c.estaMovimiento());
  c.getCarga();
}

class Vehiculo {
  // Atributos
  String? marca;
  int? modelo;
  int? velocidad;

  // metodos
  void getInfo() {
    print("la marca es ${marca}");
    print("el modelo es ${modelo}");
    print("la velocidad es ${velocidad}");
  }

  bool estaMovimiento() {
    if (this.velocidad! > 0) {
      return true;
    } else {
      return false;
    }
  }
}

class Moto extends Vehiculo {
  int? cilindraje;

  Moto(int cili) {
    this.cilindraje = cili;
  }

  void tipo() {
    if (this.cilindraje! < 200) {
      print("ciudad");
    } else {
      print("viajes largos");
    }
  }
}

class Camion extends Vehiculo {
  int? capacidad;
  Camion(int cap) {
    this.capacidad = cap;
  }

  void getCarga() {
    if (this.capacidad! > 3000) {
      print("carga pesada");
    } else {
      print("ligera");
    }
  }
}
