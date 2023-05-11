//import 'dart:html';
import 'package:first_project/api/blog_api.dart';
import 'package:first_project/api/login_api.dart';
import 'package:first_project/infra/custom_server.dart';
// 'package:flutter/cupertino.dart';
import 'package:shelf/shelf.dart';
import 'package:first_project/utils/custom_env.dart';
//import 'package:first_project/api/mega_api.dart' as apimega;

void main() async {
  CustomEnv.fromFile('.env-dev');

  var cascadeHandler =
      Cascade().add(LoginApi().handler).add(BlogApi().handler).handler;

  var handler =
      Pipeline().addMiddleware(logRequests()).addHandler(cascadeHandler);

  await CustomServer().initialize(
    handler: handler,
    address: await CustomEnv.get<String>(key: 'server_address'),
    port: await CustomEnv.get<int>(key: 'server_port'),
  );
}
  //#####----- API's MEGA -----#####//

  //##-- Para CHAMAR a classe contendo a API.
  //var usumob = apimega.UsuMobAgro().fetchUsuarios();
  //var mfa = apimega.MegaFA().fetchUsuarios();
  // mtalhao = apimega.MegaTalhao().fetchUsuarios();
  // await print(usumob.fetchUsuarios);
  //print(usumob);
  //print(mfa);
  //print(usumob);
  //##-- Para PRINTAR os dados da API.
  //print(umob.fetchUsuarios()); //--- Extrai usuários do MobAgro
//}
