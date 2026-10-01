# Desafio Go - Full Cycle

Este repositório contém a solução para o **Desafio Go** do módulo de Docker da [Full Cycle](https://fullcycle.com.br/). O objetivo da atividade é criar uma aplicação em Go que exiba a mensagem `Full Cycle Rocks!!` e empacotá-la em uma imagem Docker otimizada com menos de 2 MB.

## 🚀 Tecnologias Utilizadas
- **Go (Golang)**: Linguagem de programação escolhida para criar um binário estático.
- **Docker**: Para empacotamento e distribuição da aplicação através de *Multi-stage Build* e imagem base `scratch`.

---

## 📂 Estrutura do Projeto

- `main.go` - Código fonte principal da aplicação em Go.
- `go.mod` - Arquivo de gerenciamento de módulos do Go.
- `Dockerfile` - Instruções para build e otimização da imagem Docker.

---

## 🛠️ Como Executar Localmente

Se você quiser testar o projeto diretamente na sua máquina, siga os passos abaixo:

### 1. Pré-requisitos
Certifique-se de ter o [Docker](https://www.docker.com/) instalado.

### 2. Clonar o repositório e construir a imagem
Clone o repositório, navegue até a pasta do projeto e execute o comando de build do Docker:

```bash
docker build -t dersonlopes/fullcycle-go:latest .
```

### 3. Verificar o tamanho da imagem
Para conferir se a imagem ficou com menos de 2 MB:

```bash
docker images dersonlopes/fullcycle-go
```

### 4. Executar o container
Execute o container para ver a mensagem na tela:

```bash
docker run --rm dersonlopes/fullcycle-go:latest
```

---

## 📦 Imagem no Docker Hub

A imagem oficial gerada para este desafio está hospedada e pública no Docker Hub:

* **Link da Imagem:** [dersonlopes/fullcycle-go](https://hub.docker.com/r/dersonlopes/fullcycle-go)

Você pode baixá-la e executá-la diretamente de qualquer lugar com um único comando, sem precisar clonar este repositório:

```bash
docker run --rm dersonlopes/fullcycle-go:latest
```