# Python 3.9 imajını kullan
FROM python:3.9

# Çalışma dizinini oluştur ve ayarla
WORKDIR /app

# Gereksinimleri kopyala ve yükle
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama dosyalarını kopyala
COPY . .

# Sunucu başlatma komutunu belirle
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
