import 'package:flutter/material.dart';
import '../services/supabase_service.dart';

class FormPesananPage extends StatefulWidget {

  final Map? data;

  const FormPesananPage({super.key, this.data});

  @override
  State<FormPesananPage> createState() => _FormPesananPageState();
}

class _FormPesananPageState extends State<FormPesananPage> {

  final service = SupabaseService();

  final nama = TextEditingController();
  final menu = TextEditingController();
  final jumlah = TextEditingController();
  final harga = TextEditingController();

  Future simpan() async {

    final data = {
      'nama': nama.text,
      'menu': menu.text,
      'jumlah': int.parse(jumlah.text),
      'harga': int.parse(harga.text),
    };

    if (widget.data == null) {
      await service.tambahPesanan(data);
    } else {
      await service.updatePesanan(widget.data!['id'], data);
    }

    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();

    if (widget.data != null) {
      nama.text = widget.data!['nama'];
      menu.text = widget.data!['menu'];
      jumlah.text = widget.data!['jumlah'].toString();
      harga.text = widget.data!['harga'].toString();
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.data == null ? "Tambah Pesanan" : "Edit Pesanan"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            TextField(
              controller: nama,
              decoration: const InputDecoration(
                labelText: "Nama Pemesan",
              ),
            ),

            TextField(
              controller: menu,
              decoration: const InputDecoration(
                labelText: "Menu Pesanan",
              ),
            ),

            TextField(
              controller: jumlah,
              decoration: const InputDecoration(
                labelText: "Jumlah",
              ),
              keyboardType: TextInputType.number,
            ),

            TextField(
              controller: harga,
              decoration: const InputDecoration(
                labelText: "Harga",
              ),
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: simpan,
              child: const Text("Simpan"),
            )

          ],
        ),
      ),
    );
  }
}