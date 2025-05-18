FROM ubuntu:latest

# Установка необходимых пакетов одной командой
RUN apt-get update && apt-get install -y \
    wget \
    python3 \
    python3-pip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Копирование файлов
COPY search_path.sh extract_path_value.py config.txt /tmp/

# Установка прав на скрипты
RUN chmod +x /tmp/search_path.sh /tmp/extract_path_value.py

# установка рабочей директории
WORKDIR /tmp

# команда запуска
# CMD ["bash", "search_path.sh"]
