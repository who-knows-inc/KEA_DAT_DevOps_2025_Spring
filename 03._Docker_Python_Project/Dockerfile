FROM python
RUN adduser --system --home /home/appuser appuser
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt
COPY . .
USER appuser
EXPOSE 8080
CMD ["python", "app.py"]