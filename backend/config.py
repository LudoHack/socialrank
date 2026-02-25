from pydantic_settings import BaseSettings

class Settings(BaseSettings):
    database_url: str = "postgresql://postgres:postgres@localhost:5432/etnografica"
    gemini_api_key: str = ""          # Gratis en: https://aistudio.google.com/apikey
    environment: str = "development"

    class Config:
        env_file = ".env"

settings = Settings()
