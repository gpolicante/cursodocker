
# sempre deve ser na primeira linha , vou passar qual imagem vou utilizar como base
FROM gpolicante/curso-docker:latest
# executo uma serie de comandos , so que cada comando é um stack diferente
RUN echo executar qualquer comando dentro do container
RUN echo executar mais comandos so que nn pode ser dependencia do anterior
RUN echo executar um comando && echo um comando com dependencia do anterior
# cria um tipo de uma tag para a imagem
LABEL version="1.0"
# cria uma variavel de ambiente
ENV PALMEIRAS="nn tem mundial"

# executa a variavel criada anteriormente
RUN echo $PALMEIRAS
# copia um arquivo ou diretorio para algum lugar
COPY index.html /etc/
# cria um volume estatico para a imagem
VOLUME /srv
# diretorio que sera executado todos os RUNS e CMD
WORKDIR /etc
# entry point padrão porem na execução pode ser alterado
CMD /bin/bash
# entrypoint padrão mas nn pode ser alterado
ENTRYPOINT /bin/bash
