// 'package:shelf/shelf.dart';
//import 'package:shelf_router/shelf_router.dart';
import 'package:http/http.dart' as http;

class UsuMobAgro {
  Future<void> fetchUsuarios() async {
    final response = await http
        .get(Uri.parse('http://10.0.1.252:35700/api/MobAgro/Usuario'));

    if (response.statusCode == 200) {
      // Use o conteúdo da resposta.
      print(response.body);
      //var usumob = response.body;
    } else {
      // Se a resposta não for bem-sucedida, lance uma exceção.
      throw Exception('Falha ao carregar os usuários');
    }
  }
}

class MegaFA {
  Future<void> fetchUsuarios() async {
    int FA = 1;
    final response = await http.get(Uri.parse(
        'http://10.0.1.252:35700/api/MobAgro/FundoAgricola/filtro?listaIdFAgricola=$FA'));

    if (response.statusCode == 200) {
      // Use o conteúdo da resposta.
      print(response.body);
      //var usumob = response.body;
    } else {
      // Se a resposta não for bem-sucedida, lance uma exceção.
      throw Exception('Falha ao carregar Fundo Agrícola');
    }
  }
}

class MegaTalhao {
  Future<void> fetchUsuarios() async {
    final response =
        await http.get(Uri.parse('http://10.0.1.252:35700/api/MobAgro/Talhao'));

    if (response.statusCode == 200) {
      // Use o conteúdo da resposta.
      print(response.body);
      //var usumob = response.body;
    } else {
      // Se a resposta não for bem-sucedida, lance uma exceção.
      throw Exception('Falha ao carregar Fundo Agrícola');
    }
  }
}
