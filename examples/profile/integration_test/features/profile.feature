#language: ru

  Функциональность: Профиль

    Сценарий: Успешное заполнение профиля данными
      Когда Я перехожу к редактированию профиля
      И Я указываю фамилию
      И Я указываю имя
      И Я указываю отчество
      И Я указываю дату рождения
      И Я перехожу далее
      Тогда Я вижу экран заполнения города
      И Я выбираю город из списка
      И Я перехожу далее
      Тогда Я вижу экран выбора интересов
      И Я указываю интересы
      И Я перехожу далее
      Тогда Я вижу экран данных о себе
      И Я указываю информацию о себе
      И Я сохраняю данные о себе
      И Я перехожу к редактированию профиля
      Тогда Я вижу указанную фамилию
      И Я вижу указанное имя
      И Я вижу указанное отчество
      И Я вижу указанную дату рождения
      Когда Я перехожу далее
      Тогда Я вижу указанный город
      Когда Я перехожу далее
      Тогда Я вижу указанные интересы
      Когда Я перехожу далее
      Тогда Я вижу указанную информацию о себе

    Сценарий: Валидация в случае всех пустых полей
      Когда Я перехожу к редактированию профиля
      И Я перехожу далее
      Тогда Я вижу валидацию фамилии
      И Я вижу валидацию имени
      И Я вижу валидацию даты рождения

    Сценарий: Валидация в случае незаполненной фамилии
      Когда Я перехожу к редактированию профиля
      И Я указываю имя
      И Я указываю отчество
      И Я указываю дату рождения
      И Я перехожу далее
      Тогда Я вижу валидацию фамилии

    Сценарий: Валидация в случае незаполненного имени
      Когда Я перехожу к редактированию профиля
      И Я указываю фамилию
      И Я указываю дату рождения
      И Я перехожу далее
      Тогда Я вижу валидацию имени

    Сценарий: Валидация в случае незаполненного отчества
      Когда Я перехожу к редактированию профиля
      И Я указываю фамилию
      И Я указываю имя
      И Я указываю дату рождения
      И Я перехожу далее
      Тогда Я вижу экран заполнения города

    Сценарий: Валидация в случае незаполненной даты рождения
      Когда Я перехожу к редактированию профиля
      И Я указываю фамилию
      И Я указываю имя
      И Я указываю отчество
      И Я перехожу далее
      Тогда Я вижу валидацию даты рождения
