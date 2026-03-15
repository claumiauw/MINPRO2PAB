import 'package:flutter/material.dart';
import '../services/supabase_service.dart';
import 'form_pesanan.dart';

class ListPesananPage extends StatefulWidget {
  final VoidCallback toggleTheme;
  const ListPesananPage({super.key, required this.toggleTheme});

  @override
  State<ListPesananPage> createState() => _ListPesananPageState();
}

class _ListPesananPageState extends State<ListPesananPage> {

  final service = SupabaseService();
  List pesanan = [];

  Future loadData() async {
    final data = await service.getPesanan();
    setState(() {
      pesanan = data;
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
  title: const Text("Daftar Pesanan Catering"),
  actions: [
    IconButton(
      icon: const Icon(Icons.dark_mode),
      onPressed: widget.toggleTheme,
    )
  ],
),

      body: ListView.builder(
        itemCount: pesanan.length,
        itemBuilder: (context, index) {

          final item = pesanan[index];

          return ListTile(
            title: Text(item['nama']),
            subtitle: Text(
              "Menu: ${item['menu']} | Jumlah: ${item['jumlah']} | Harga: Rp ${item['harga']}",
            ),

            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [

                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => FormPesananPage(data: item),
                      ),
                    ).then((_) => loadData());
                  },
                ),

                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () async {
                    await service.deletePesanan(item['id']);
                    loadData();
                  },
                ),

              ],
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const FormPesananPage(),
            ),
          ).then((_) => loadData());
        },
      ),
    );
  }
}