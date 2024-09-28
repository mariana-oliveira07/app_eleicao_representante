import 'package:flutter/material.dart';

class EleicaoPage extends StatefulWidget {
  const EleicaoPage({super.key});

  @override
  State<EleicaoPage> createState() => _EleicaoPageState();
}

class _EleicaoPageState extends State<EleicaoPage> {
  List candidatos = [0, 0, 0, 0, 0]; //candidato [1]

  resultado() {
    int maiorValor = candidatos
        .reduce((atual, proximo) => atual > proximo ? atual : proximo);

    List indicesVencedores = [];
    for (int i = 0; i < candidatos.length; i++) {
      if (candidatos[i] == maiorValor) {
        indicesVencedores.add(i);
      }
    }
    print(indicesVencedores);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eleição para representante'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Escolha um candidato ou opte por voto em branco ou nulo:',
              textAlign: TextAlign.center, // Centraliza o texto
            ),
            Wrap(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/candidato_1.jpg',
                      fit: BoxFit.cover,
                      height: 150,
                    ),
                    const Text('Batman')
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/candidato_2.jpg',
                      fit: BoxFit.cover,
                      height: 150,
                    ),
                    const Text('Silvio Santos')
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/candidato_3.jpg',
                      fit: BoxFit.cover,
                      height: 150,
                    ),
                    const Text('Rafael Ninja')
                  ],
                ),
              ],
            ),
            const Wrap(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.block,
                      size: 200,
                    ),
                    Text('Nulo'),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.how_to_vote,
                      size: 200,
                    ),
                    Text('Branco'),
                  ],
                )
              ],
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text('Finalizar votação'))
          ],
        ),
      ),
    );
  }
}
