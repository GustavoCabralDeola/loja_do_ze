# 🛒 Loja do Zé — Jogo dos 7 Erros (Clean Code em Flutter)

O Zé fez esse app sozinho, de madrugada, com prazo pra ontem. **Funciona**… mais ou menos. Agora o código caiu no colo de vocês.

Sua missão: **encontrar e corrigir os problemas de Clean Code** espalhados pelo projeto e abrir um Pull Request com as correções.

## 🎯 Regras do jogo

1. Existem **pelo menos 7 categorias de problemas** escondidas no código — e cada categoria aparece **várias vezes**, em vários arquivos.
2. O app tem que **continuar funcionando igual** (ou melhor) depois da sua refatoração. Refatorar ≠ mudar comportamento.
3. Se você encontrar um **bug de verdade** causado por código ruim, ganha ponto extra — explique no PR como o código sujo escondeu o bug.
4. Cada PR deve dizer **qual problema foi encontrado, onde, e por que a correção é melhor**. Use o template de PR.
5. Commits pequenos e com mensagens claras. Um commit "arrumei tudo" vale menos que cinco commits bem descritos.

### Dicas (sem entregar o ouro)

- Leia os nomes. Eles dizem o que as coisas fazem?
- Conte as linhas de cada função / método `build`.
- Procure números e textos "soltos" no meio do código.
- `Ctrl+F` em trechos repetidos é seu amigo.
- Os comentários ajudam ou atrapalham?
- Quem é responsável por quê? A tela deveria saber calcular frete?
- O que acontece quando algo dá errado?
- O próprio `analysis_options.yaml` pode estar escondendo coisas…

## ▶️ Como rodar

O repositório só tem o código Dart. Gere as pastas de plataforma uma vez:

```bash
flutter create . --platforms=android,ios,web
flutter pub get
flutter run
```

Login: qualquer usuário com mais de 3 letras e senha com 6+ caracteres.

## 🔀 Como entregar

```bash
# 1. Faça um fork deste repositório
# 2. Crie uma branch
git checkout -b refactor/seu-nome
# 3. Refatore, com commits pequenos
git commit -m "refactor: extrai widget ProdutoCard"
# 4. Suba e abra o PR para o repositório original
git push origin refactor/seu-nome
```

Rode `flutter analyze` antes de abrir o PR. Se ele não reclamar de nada… desconfie. 😉
