# Repositório do projeto One For All

<summary><strong>👨‍💻 O que foi desenvolvido</strong></summary><br />
No projeto ***One For All***, foram normalizadas e populadas as tabelas da planilha SpotifyClone para a **3° Forma Normal**.
<br />
<br />
<summary><strong>📖 Regras de negócio do banco de dados</strong></summary><br />

Seu banco de dados deve seguir as regras de negócio e ser capaz de recuperar:

- Informações sobre quais planos estão disponíveis e seus detalhes;
  - Cada pessoa usuária pode possuir apenas um plano.

- Informações sobre todas as pessoas artistas;
  - Uma pessoa artista pode ter vários álbuns;
  - Uma pessoa artista pode ser seguida por várias pessoas usuárias.

- Informações sobre todos os álbuns de cada artista;
  - Para fins deste projeto, considere que cada álbum possui apenas uma pessoa artista como principal;
  - Cada álbum possui várias canções.

- Informações sobre todas as canções de cada álbum;
  - Para fins deste projeto, considere que cada canção está contida em apenas um álbum.

- Informações sobre todas as pessoas usuárias, seus planos, seu histórico de reprodução e pessoas artistas seguidas.
  - Uma pessoa usuária pode possuir apenas um plano;
  - Cada música do histórico de reprodução pode aparecer uma única vez por pessoa (para simplificar, considere que o objetivo do histórico é saber **quais** canções já foram reproduzidas e **não quantas vezes** foram reproduzidas);
  - Uma pessoa usuária pode seguir várias pessoas artistas, mas cada pessoa artista pode ser seguida apenas uma vez por pessoa usuária.

<summary><strong>:memo: Habilidades</strong></summary><br/>

- Docker;
- Manipulação de banco de Dados Relacionais - MySQL;
- Funções SQL, JOIN's e Normalização;


O projeto foi desenvolvido no VSCode.
