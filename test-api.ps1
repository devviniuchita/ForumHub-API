# Script de teste da ForumHub API

Write-Host "=== TESTANDO FORUMHUB API ===" -ForegroundColor Green

# Teste 1: GET /topicos
Write-Host "`n1. Testando GET /topicos" -ForegroundColor Yellow
try {
    $response = Invoke-WebRequest -Uri "http://localhost:8080/topicos" -Method GET
    Write-Host "Status: $($response.StatusCode)" -ForegroundColor Green
    Write-Host "Resposta: $($response.Content)"
} catch {
    Write-Host "Erro: $($_.Exception.Message)" -ForegroundColor Red
}

# Teste 2: POST /auth/register
Write-Host "`n2. Testando POST /auth/register" -ForegroundColor Yellow
$registerBody = @{
    login = "admin"
    senha = "123456"
    role = "ADMIN"
} | ConvertTo-Json

try {
    $response = Invoke-WebRequest -Uri "http://localhost:8080/auth/register" -Method POST -Body $registerBody -ContentType "application/json"
    Write-Host "Status: $($response.StatusCode)" -ForegroundColor Green
    Write-Host "Resposta: $($response.Content)"
} catch {
    Write-Host "Status: $($_.Exception.Response.StatusCode.value__)" -ForegroundColor Red
    Write-Host "Erro: $($_.Exception.Message)" -ForegroundColor Red
}

# Teste 3: POST /auth/login
Write-Host "`n3. Testando POST /auth/login" -ForegroundColor Yellow
$loginBody = @{
    login = "admin"
    senha = "123456"
} | ConvertTo-Json

try {
    $response = Invoke-WebRequest -Uri "http://localhost:8080/auth/login" -Method POST -Body $loginBody -ContentType "application/json"
    Write-Host "Status: $($response.StatusCode)" -ForegroundColor Green
    $token = ($response.Content | ConvertFrom-Json).tokenJWT
    Write-Host "Token obtido: $($token.Substring(0,50))..." -ForegroundColor Green
    
    # Teste 4: POST /topicos com autenticação
    Write-Host "`n4. Testando POST /topicos (autenticado)" -ForegroundColor Yellow
    $topicoBody = @{
        titulo = "Meu Primeiro Tópico"
        mensagem = "Esta é uma mensagem de teste para o tópico."
    } | ConvertTo-Json
    
    $headers = @{
        "Authorization" = "Bearer $token"
    }
    
    $response = Invoke-WebRequest -Uri "http://localhost:8080/topicos" -Method POST -Body $topicoBody -ContentType "application/json" -Headers $headers
    Write-Host "Status: $($response.StatusCode)" -ForegroundColor Green
    Write-Host "Tópico criado: $($response.Content)"
    
} catch {
    Write-Host "Status: $($_.Exception.Response.StatusCode.value__)" -ForegroundColor Red
    Write-Host "Erro: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "`n=== TESTE CONCLUÍDO ===" -ForegroundColor Green
