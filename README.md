![](https://gitlab.com/projeto-leitor-hidrometro/shd-dashboard/badges/main/pipeline.svg)

# shd-dashboard

Protótipo de dashboard do projeto de Sistema de Hidômetros Digitais.

Esta dashboard utiliza o template [starter-kit] do [Keen IO].

Para a criação(build) da Dashboard estou utilizando a minha versão modificada do [ssg5], o [ssg5-pandoc].

## Dependências

* [pandoc];
* [ssg5-pandoc];
* [make] - [build-essential] se estiver utilizando um sitema operacional baseado em [Debian];

## Uso

Instale as dependencias listadas no tópico anterior, e rode o seguinte comando para a criação da **Dashboard**:

```sh
$ make dashboard
```

Para testar a dashboard no seu navegador, rode:

```sh
$ make debug
```

## Desenvolvedor

| ![](https://assets.gitlab-static.net/uploads/-/system/user/avatar/2382314/avatar.png?width=200) |
|:------:|
| [Edimar Calebe Castanho(calebe94@disroot.org)](https://gitlab.com/Calebe94) |

## Licença

Todo este software é coberto pela Licença [MIT](https://mit-license.org/).

[Keen IO]: http://keen.github.io/dashboards/
[starter-kit]: https://github.com/keen/dashboards/tree/master/examples/starter-kit
[ssg5]: https://www.romanzolotarev.com/ssg.html
[ssg5-pandoc]: https://gitlab.com/Calebe94/ssg5-pandoc
[pandoc]: https://pandoc.org
[make]: https://www.gnu.org/software/make/
[build-essential]: https://packages.debian.org/bullseye/build-essential
[Debian]: https://debian.org
