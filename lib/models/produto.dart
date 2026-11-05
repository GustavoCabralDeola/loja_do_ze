class Produto {
  var id;
  String? nome;
  var preco;
  String? cat; // categoria
  int? estoque;
  String? img;
  bool? promo;
  String status = "ativo"; // ativo, inativo, esgotado, ATIVO

  Produto(this.id, this.nome, this.preco, this.cat, this.estoque, this.img,
      this.promo);

  // cria produto a partir do map
  static Produto fromMap(Map m) {
    var p = Produto(m['id'], m['nome'], m['preco'], m['categoria'],
        m['estoque'], m['imagem'], m['promo']);
    if (m['status'] != null) p.status = m['status'];
    return p;
  }

  // pega o preco
  double getPreco() {
    if (promo == true) {
      return preco - (preco * 0.15);
    } else {
      return preco * 1.0;
    }
  }
}
