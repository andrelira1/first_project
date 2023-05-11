import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class BlogApi {
  Handler get handler {
    Router router = Router();

    // Listagem
    router.get('/blog/noticias', (Request req) {
      return Response.ok('Choveu hoje!');
    });

    // Nova Notícia
    router.post('/blog/noticias', (Request req) {
      return Response.ok('Choveu hoje!');
    });

    // /blog/noticias?id=1    // Update
    router.put('/blog/noticias', (Request req) {
      String? id = req.url.queryParameters['id'];
      return Response.ok('Choveu hoje!');
    });

    // /blog/noticias?id=1    // Delete
    router.delete('/blog/noticias', (Request req) {
      String? id = req.url.queryParameters['id'];
      return Response.ok('Choveu hoje!');
    });

    return router;
  }
}
