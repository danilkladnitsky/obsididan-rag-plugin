# Obsidian RAG Plugin (TBD Team)

## Demo Web App
https://llm-course-2024.kladnitsky.ru/

## Obsidian Plugin
https://github.com/danilkladnitsky/obsidian-rag-plugin/releases

## Интерфейс
![Синхронизация](static/ui-1.png)

![Запрос к RAG](static/ui-2.png)

![Выдача](static/ui-3.png)

## Как запустить
### AI Tunnel
https://aitunnel.ru/#models

1. Подготовьте API-токен от AI Tunnel
2. Создайте файл .env в корне проекта
```bash
LLM_API_KEY=<Ваш токен>
```
3. Запустите проект через docker
```bash
docker compose -f docker-compose.yml --env-file .env up --build
```
4. Фронтенд будет запущен на 82 порту, бэкенд - на 8000

### OpenAI
1. Подготовьте API-токен от OpenAI
2. В файле `backend/src/llm.py` закомментируйте строчку
```python
class LLM:
    def __init__(self, config):
        # ...
        self.llm_client = OpenAI(
            # base_url=config["llm"]["base_url"],
            api_key=os.environ[config["llm"]["api_key"]],
        )
    
    # ...

```
3. Следуйте шагам 2-4 в кейсе с AI Tunnel

## Авторы
Данил Кладницкий (tg: @danilkladnitsky)

Аверченко Марк Алексеевич (tg: @marcenavuc)

Бондарчук Анастасия Ивановна (tg: @Spirit_Green)