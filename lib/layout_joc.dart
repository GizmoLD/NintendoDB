import 'package:flutter/material.dart';

class layout_joc extends StatelessWidget {
  final dynamic itemData;

// Relacionar els colors amb el text que els defineix
  final Map<String, Color> colorMap = {
    'red': Colors.red,
    'blue': Colors.blue,
    'green': Colors.green,
    'orange': Colors.orange,
    'brown': Colors.brown,
    'grey': Colors.grey,
  };

// Constructor
  layout_joc({Key? key, required this.itemData}) : super(key: key);

// Retornar un 'Color' a partir del text, fent servir el mapa de colors anterior
  Color getColorFromString(String colorString) {
    return colorMap[colorString.toLowerCase()] ?? Colors.black;
  }

  // ... aquí la funció ‘build’ definida a la següent diapositiva
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Ocupar la meitat superior de l'espai amb la imatge
          SizedBox(
            width: MediaQuery.of(context).size.width * 100.0,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset(
              'assets/images/${itemData["imatge"]}',
              fit: BoxFit.contain,
            ),
          ),
          // Ocupar la meitat inferior de l'espai amb els textos
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${itemData['any']}",
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                Text(
                  "${itemData['tipus']}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text("${itemData['descripcio']}",
                    overflow: TextOverflow.visible,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.normal)),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
