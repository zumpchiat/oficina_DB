# Oficina_DB

Projeto de um banco de dados para uma oficina mecânica.

---

## Modelagem

![err](https://github.com/zumpchiat/oficina_DB/blob/main/assets/diagrama_oficina.png?raw=true)

---

## Estrutura dos Arquivos e Pastas

- **[schema.sql](schema.sql)** | arquivo com estrutura do Banco de Dados
- **[populate_oficinaDB.sql](populate_oficinaDB.sql)** | Arquivo de dados fake
- **[queries.sql](queries.sql)** | Queries do para executar no schema

---

#### Requisitos e Funcionalidades

O banco de dados da oficina foi modelado para ser um sistema de gerenciamento de Ordens de Serviço (OS), integrando informações de Clientes, Veículos, Mecânicos e Estoque. Ele cumpre os seguintes requisitos essenciais de uma oficina mecânica moderna:

#### 1. Requisitos de Gestão de Clientes e Veículos

O sistema permite uma visão completa do histórico do cliente e da frota que ele gerencia:

- Cadastro Completo de Clientes: Requer o registro de dados essenciais como Nome, CPF (único) e Contato (telefone e e-mail, sendo o e-mail também único), facilitando a comunicação e a identificação fiscal.

- Rastreabilidade de Veículos: Permite o cadastro de veículos por Placa e Chassi (ambos únicos), garantindo que cada veículo seja rastreado individualmente.

- Histórico do Cliente: O sistema deve ser capaz de associar um ou mais Veículos a um Cliente (relação 1:N), permitindo que a oficina recupere rapidamente o histórico de serviços de cada proprietário.

- Controle de Visitas: O atributo dtUltimaVisita na tabela cliente permite o monitoramento de quando o cliente esteve na oficina pela última vez, auxiliando em campanhas de fidelização e manutenção preventiva.

#### 2. Requisitos de Controle de Ordem de Serviço (OS)

O coração do sistema é o gerenciamento da OS, que deve ser detalhada e ter seu progresso rastreado:

- Rastreamento de Status: Permite o controle do fluxo de trabalho através do campo os_status (Aberta, Em_progresso, Fechada, Cancelada), essencial para saber o que precisa ser feito ou o que já foi finalizado.

- Previsão e Conclusão: A OS registra a Dt_Emissao, a Dt_PrevEntrega e a Dt_Conclusao, permitindo o monitoramento do cumprimento de prazos e a avaliação da eficiência da oficina.

- Orçamento e Financeiro: O campo valor_total armazena o custo final da OS. Esse valor é calculado pela soma dos custos dos Serviços e das Peças associadas àquela ordem.

- Associação Direta: Toda Ordem de Serviço está obrigatoriamente vinculada a um Veículo (id_veiculo not null).

### 3. Requisitos de Mão de Obra e Produtividade

O sistema deve gerenciar os profissionais e medir a eficiência do trabalho:

- Identificação Profissional: O cadastro do Mecânico inclui o CREA (registro profissional único) e a Especialidade, permitindo que a oficina aloque o profissional mais adequado para cada tipo de reparo.

- Controle de Senioridade: O campo senioridade (junior, pleno, senior) pode ser usado para definir diferentes valores por hora de trabalho e para planejar o desenvolvimento da equipe.

- Rastreamento de Mão de Obra (Tabela os_mecanico): O sistema registra exatamente qual Mecânico (id_mecanico) trabalhou em qual OS (id_ordemServico) e o tempo exato gasto (horas_trabalhadas), permitindo o cálculo de comissões, produtividade individual e o custo real da mão de obra por serviço.

### 4. Requisitos de Estoque e Composição da OS

As tabelas associativas garantem que o custo final seja preciso e o estoque seja atualizado:

- Gestão de Serviços (Tabela servico): Mantém um catálogo dos serviços prestados (nome, valor) para padronização de preços e orçamentos.

- Gestão de Peças (Tabela produto_peca): Controla o inventário com quantidade em estoque, nome e preco, facilitando a gestão de compras.

- Detalhamento da OS (Tabela os_servico): Registra todos os Serviços que compõem uma OS, incluindo o tempo gasto (horas_trabalhadas) em cada serviço específico.

- Consumo de Estoque (Tabela os_ItemPeca): Permite registrar quais Peças (id_produto) foram utilizadas em uma OS e em que quantidade (quantidade_utilizada). Este registro é fundamental para que, ao fechar a OS, a quantidade no estoque da tabela produto_peca seja automaticamente decrementada.

Este conjunto de requisitos transforma o banco de dados em uma ferramenta poderosa para o gerenciamento operacional, financeiro e de recursos humanos da oficina.

---

## Tecnologias utilizadas

- MySQL
- workbench
- SQL
- VSCODE
