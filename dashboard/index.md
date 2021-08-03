<div class="container">

# Protótipo

## Funcionamento

Os hardwares devem ler o fluxo de água utilizando o sensor de fluxo YF-S201. 
Através das informações lidas pelo sensor será possível calcular quantos litros de água passaram pelo sensor.

O microcontrolador será responsável por ler todas estas informações e armazenar na memória flash para previnir se houver falta de luz.

Após um período de tempo (configurável) o dispositivo **CONTROLADOR** deverá enviar uma requisição aos dispositivos **PERIFÉRICOS** através da interface **RS485** para que os mesmos retornem os valores do volume de água lidos.

As configurações de modo de operação (**CONTROLADOR** ou **PERIFÉRICO**) e **ID** serão realizadas através de uma interface WEB.

### CONTROLADOR e PERIFÉRICO

O dispositivo **CONTROLADOR** é o dispositivo que possui o módulo **GPRS** [SIM7070G]. Módulo este para enviar os dados para o servidor.

O **CONTROLADOR** é responsável por requisitar as leituras realizadas por todos os dispositivos **PERIFÉRICOS** na sua rede **RS485**.

O **CONTROLADOR** também realiza a leitura de passagem de água.

Já o dispositivo **PERIFÉRICO** é responsável por realiza a leitura de passagem de água.

### Interface WEB

Sempre que o dispositivo for ligado, uma rede Wifi será acionada com o nome `hidrometro-digital` e a senha será `hidrometro`.

Após estabelecer conexão com a rede, é possível acessar a página de configurações do dispositivo através do IP `http://192.168.4.1`.

A página apresentada possui informações das configurações disponíveis e que podem ser realizadas na aba `Configurações`.

Na aba `Leituras` o usuário poderá acompanhar a leitura do sensor (litros de água) em tempo real.

### Interrupções

Toda vez que houver um fluxo de água, o sensor de fluxo irá girar a
roleta interna, ativando o sensor de efeito hall gerando uma interrupção
no terminal `GPIO4` do `ESP32`.

Quando a interrupção for gerada, o programa irá enviar esta informação
para uma fila, onde será incrementada uma variável de pulsos.

Haverá uma `task` rodando a cada segundo que irá pegar esta informção e
calcular quantos litros de água passou neste último segundo.

Mais informações podem ser encontradas [neste artigo](https://how2electronics.com/iot-water-flow-meter-using-esp8266-water-flow-sensor/).

[platformio]: https://docs.platformio.org/en/latest/core/installation.html
[pandoc]: https://pandoc.org/
[ssg5-pandoc]: https://gitlab.com/Calebe94/ssg5-pandoc
[SIM7070G]: https://www.simcom.com/product/SIM7070G.html

</div>
