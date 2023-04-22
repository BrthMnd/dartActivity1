import 'dart:io';

void main(List<String> arguments) {
  // * Actividad ->
  int menuOption = 0;

  // * ->1. El siguiente programa calcula el salario de un trabajador con un impuesto
  void SalarioTrabajador() {
    print("Digite el salario: ");
    double salario = double.parse(stdin.readLineSync()!);
    print("Digite el los impuestos: ");
    double impuesto = double.parse(stdin.readLineSync()!);

    double porcentajeImpuesto = (salario * impuesto) / 100;
    double total = salario - porcentajeImpuesto;

    print(
        "el salario total sera de: $total por un salario de $salario y un impuesto de $impuesto %");
  }

  //* 2. Programa en Dart que calcula el área de un triangulo cuya formula es a=(b\*h)/2.
  void TrianguloArea() {
    print("Digite la Altura: ");
    double altura = double.parse(stdin.readLineSync()!);
    print("Digite la base: ");
    double base = double.parse(stdin.readLineSync()!);

    double area = (base * altura) / 2;

    print("el area del triangulo es de: $area");
  }

  //* 3. Programa que dados 2 números calcule la suma, resta, multiplicación, división, y modulo.
  void CalcularNumeros() {
    print("Numero 1:");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Numero 2:");
    double num2 = double.parse(stdin.readLineSync()!);
    double total;

    print("MENU DE OPCIONES:");
    print("Option -> 1 == SUMAR");
    print("Option -> 2 == RESTA");
    print("Option -> 3 == MULTIPLICACION");
    print("Option -> 4 == DIVISION");
    print("Option -> 5 == MODULO");
    print("Coloque la Opcion: ");
    int option = int.parse(stdin.readLineSync()!);
    switch (option) {
      case 1:
        {
          total = num1 + num2;
          print("el total es $total ");
          break;
        }
      case 2:
        {
          total = num1 - num2;
          print("el total es $total ");
          break;
        }
      case 3:
        {
          total = num1 * num2;
          print("el total es $total ");
          break;
        }
      case 4:
        {
          total = num1 / num2;
          print("el total es $total ");
          break;
        }
      case 5:
        {
          total = num1 % num2;
          print("el total es $total ");

          break;
        }
    }
  }

  //* 4. Dado un número entero positivo determine si es par o impar.
  void NumerosEnterosImpares() {
    print("Coloque numero: ");
    int num1 = int.parse(stdin.readLineSync()!);

    if (num1 % 2 == 0) {
      print("el numero $num1 es: par ");
    } else {
      print("el numero $num1 es: impar ");
    }
  }

  //* Obtener el mayor de dos números enteros positivos.
  void MayorNumeros() {
    print("Numero 1:");
    double num1 = double.parse(stdin.readLineSync()!);
    print("Numero 2:");
    double num2 = double.parse(stdin.readLineSync()!);

    if (num1 > num2) {
      print("el numero $num1 es mayor que $num2");
    } else if (num1 == num2) {
      print("Los dos son iguales");
    } else {
      print("el numero $num2 es mayor que $num1");
    }
  }

//* 6. Dado un número del 1 al 7 indique a que día de la semana corresponde.
//*  Ciclos repetitivos PARTE III.
//* Ejemplos Repetitivos.
  void DiasSemana() {
    List<String> diasSemana = [
      'Lunes',
      'Martes',
      'Miércoles',
      'Jueves',
      'Viernes',
      'Sábado',
      'Domingo'
    ];

    int numDia;

    do {
      print('Ingrese un número del 1 al 7: ');
      numDia = int.parse(stdin.readLineSync()!);
    } while (numDia < 1 || numDia > 7);

    String diaSemana = diasSemana[numDia - 1];

    print('El número $numDia corresponde al día $diaSemana.');
  }

  void TablaMul() {
    print("Coloque numer: ");
    int num = int.parse(stdin.readLineSync()!);

    for (int i = 1; i < 11; i++) {
      print("$i X $num = ${i * num}");
    }
  }

  do {
    print("Enter para entrar en el MENU");
    stdin.readLineSync();
    print("Menu De Actividades:");
    print("1 -> tablas de multiplicar");
    print("2 -> Dias de la semana");
    print("3 -> Buscar el numero Mayor");
    print("4 -> Saber sin un numero entero es par o impar");
    print("5 -> Calcular Numeros por Suma,Resta,etc.");
    print("6 -> Calcular el Area de trinagulo");
    print("7 -> Salario del Trabajado con impuesto");
    print("Coloque opcion: ");
    menuOption = int.parse(stdin.readLineSync()!);
    switch (menuOption) {
      case 1:
        TablaMul();
        break;
      case 2:
        DiasSemana();
        break;
      case 3:
        MayorNumeros();
        break;
      case 4:
        NumerosEnterosImpares();
        break;
      case 5:
        CalcularNumeros();
        break;
      case 6:
        TrianguloArea();
        break;
      case 7:
        SalarioTrabajador();
        break;
    }
  } while (menuOption != 0);
}
