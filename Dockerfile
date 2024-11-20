# Base image olarak Python kullanıyoruz
FROM python:3.9-slim

# Çalışma dizinini belirle
WORKDIR /app

# Gerekli bağımlılıkları yükle
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Proje dosyalarını kopyala
COPY . /app/

# Portu belirt
EXPOSE 8000

# Gunicorn'u çalıştır
CMD ["gunicorn", "myproject.wsgi:application", "--bind", "0.0.0.0:8000"]
