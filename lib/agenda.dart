
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../utils.dart';

class Agenda extends StatefulWidget {
  const Agenda({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TableBasicsExampleState createState() => _TableBasicsExampleState();
}

class _TableBasicsExampleState extends State<Agenda> {
  // Formato del calendario, comienza en "mes"
  CalendarFormat _calendarFormat = CalendarFormat.month;

  // Día enfocado en el calendario, comienza en la fecha y hora actual
  DateTime _focusedDay = DateTime.now();

  // Día seleccionado en el calendario, inicialmente nulo
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda'),
         backgroundColor:const Color.fromARGB(255, 81, 29, 82), // Título de la barra de la aplicación
      ),
      body: TableCalendar(
        firstDay: kFirstDay, // Primer día visible en el calendario
        lastDay: kLastDay,   // Último día visible en el calendario
        focusedDay: _focusedDay,        // Día actualmente enfocado
        calendarFormat: _calendarFormat, // Formato actual del calendario
        selectedDayPredicate: (day) {
          // Utiliza `selectedDayPredicate` para determinar cuál es el día actualmente seleccionado.
          // Si esto devuelve verdadero, entonces `day` se marcará como seleccionado.

          // Se recomienda usar `isSameDay` para ignorar
          // la parte de tiempo de objetos DateTime comparados.
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          if (!isSameDay(_selectedDay, selectedDay)) {
            // Llama a `setState()` al actualizar el día seleccionado
            setState(() {
              _selectedDay = selectedDay;  // Actualiza el día seleccionado
              _focusedDay = focusedDay;  // Actualiza el día enfocado
            });
          }
        },
        onFormatChanged: (format) {
          if (_calendarFormat != format) {
            // Llama a `setState()` al actualizar el formato del calendario
            setState(() {
              _calendarFormat = format;  // Actualiza el formato del calendario
            });
          }
        },
        onPageChanged: (focusedDay) {
          // No es necesario llamar a `setState()` aquí
          _focusedDay = focusedDay; 
        // Actualiza el día enfocado
        },
         daysOfWeekStyle: const DaysOfWeekStyle(
          weekendStyle: TextStyle(color: Colors.red),  // Cambia el color de los días de fin de semana
        ),
        calendarStyle: const CalendarStyle(
          selectedDecoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 75, 23, 19), // Cambia el color del círculo seleccionado
          ),
        ),
      ),
    );
  }
}
