import 'package:flutter/material.dart';

class Estoque extends StatelessWidget {
  const Estoque({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Text(
            "Adicionar itens no estoque",
            style: Theme.of(context).textTheme.displaySmall,
          ),
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              labelText: 'Nome da Categoria',
              suffixIcon: const Icon(
                Icons.drive_file_rename_outline,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                  labelText: 'Imagem geral da categoria',
                suffixIcon: const Icon(
                  Icons.camera_alt_outlined,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
