# skeleton_flutter_clean_arch

Aplicativo base para criação de novos projetos.

## Explicações

A intenção do projeto é ter uma base sólida para o desenvolvimento de qualquer nova aplicação utilizando essa base e
os princípios de arquitetura limpa. Caso existam dúvidas, um bom repositório base de estudos de arquitetura flutter
é [esse](https://github.com/guilherme-v/flutter-clean-architecture-example).

A ideia é sempre manter a mesma estrutura, com a mesma divisão de Packages para integração (apesar da estrutura suportar
alterações e adições de componentes sem nenhuma breaking change.)

Lembrar de sempre conferir as versões dos packages no pubspeck.yaml, e alterar o 'name' e 'description' para encaixar
o atual fluxo de trabalho.

Preferencialmente utilize Get_it para injeção de dependencias, e bloc para o gerenciamento de estado.
