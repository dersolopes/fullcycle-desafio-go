# Stage 1: Build da aplicação
FROM golang:1.22 AS builder

WORKDIR /app

COPY . .

# Compila o binário estático
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-w -s" -o fullcycle main.go

# Stage 2: Imagem final extremamente leve
FROM scratch

# Copia o binário compilado do estágio anterior
COPY --from=builder /app/fullcycle /fullcycle

# Executa o binário
ENTRYPOINT ["/fullcycle"]