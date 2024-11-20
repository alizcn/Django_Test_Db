# Python 3.9 image'ını kullanıyoruz
FROM python:3.9-slim

# Çalışma dizini belirliyoruz
WORKDIR /app

# requirements.txt dosyasını konteynere kopyalıyoruz
COPY requirements.txt .

# Gerekli paketleri yüklüyoruz
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama dosyalarını konteynere kopyalıyoruz
COPY . .

# Django'nun 8000 portunu açıyoruz
EXPOSE 8000

# Django'nun sunucusunu başlatıyoruz
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
