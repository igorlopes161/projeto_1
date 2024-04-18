import 'package:flutter/material.dart';

class Tela4View extends StatefulWidget {
  const Tela4View({Key? key}) : super(key: key);

  @override
  State<Tela4View> createState() => _Tela4ViewState();
}

class _Tela4ViewState extends State<Tela4View> {
  TextEditingController _itemNome = TextEditingController();
  TextEditingController _quantidade = TextEditingController();
  List<Item> items = [];

  void _adcItem() {
    String itemName = _itemNome.text;
    String quantidade = _quantidade.text;

    if (itemName.isNotEmpty && quantidade.isNotEmpty) {
      setState(() {
        items.add(Item(name: itemName, quantity: quantidade));
        _itemNome.clear();
        _quantidade.clear();
      });
    }
  }

  void _editarItem(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String editedName = items[index].name;
        String editedQuantity = items[index].quantity;

        return AlertDialog(
          title: Text('Editar Item'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: TextEditingController(text: editedName),
                onChanged: (value) => editedName = value,
                decoration: InputDecoration(labelText: 'Nome do item'),
              ),
              TextField(
                controller: TextEditingController(text: editedQuantity),
                onChanged: (value) => editedQuantity = value,
                decoration: InputDecoration(labelText: 'Quantidade'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  items[index].name = editedName;
                  items[index].quantity = editedQuantity;
                });
                Navigator.pop(context);
              },
              child: Text('Salvar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }

  void _marcarComoFeito(int index) {
    setState(() {
      items[index].done = !items[index].done;
    });
  }

  void _removerItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  List<Item> _searchItems(String query) {
    return items.where((item) => item.name.toLowerCase().contains(query.toLowerCase())).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Itens'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _itemNome,
              decoration: InputDecoration(
                labelText: 'Nome do item',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _quantidade,
              decoration: InputDecoration(
                labelText: 'Quantidade',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _adcItem,
              child: Text('Adicionar Item'),
            ),
            SizedBox(height: 20.0),
            TextField(
              onChanged: (query) {
                setState(() {
                  items = _searchItems(query);
                });
              },
              decoration: InputDecoration(
                labelText: 'Pesquisar Itens',
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Lista de Itens:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      items[index].name,
                      style: TextStyle(decoration: items[index].done ? TextDecoration.lineThrough : null),
                    ),
                    subtitle: Text('Quantidade: ${items[index].quantity}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () => _editarItem(index),
                        ),
                        IconButton(
                          icon: Icon(items[index].done ? Icons.check_box : Icons.check_box_outline_blank),
                          onPressed: () => _marcarComoFeito(index),
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => _removerItem(index),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  String name;
  String quantity;
  bool done;

  Item({required this.name, required this.quantity, this.done = false});
}
