import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class SupabaseService {

  Future<List> getPesanan() async {
    final data = await supabase.from('pesanan').select();
    return data;
  }

  Future tambahPesanan(Map data) async {
    await supabase.from('pesanan').insert(data);
  }

  Future updatePesanan(int id, Map data) async {
    await supabase.from('pesanan').update(data).eq('id', id);
  }

  Future deletePesanan(int id) async {
    await supabase.from('pesanan').delete().eq('id', id);
  }

}