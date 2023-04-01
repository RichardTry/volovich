all: setup laba1 schema

.PHONY: setup
setup:
	@cd setup; make
	@cd queries; make install

.PHONY: queries
queries:
	@cd queries; make

laba1:
	@cd queries; make laba1
laba2:
	@cd queries; make laba2
laba3:
	@cd queries; make laba3

# Генерация изображения со схемой
schema:
	@echo "Генерация изображения со схемой..."
	@plantuml schema.uml

# Псевдоцель для очистки
clean:
	@rm -f schema.png