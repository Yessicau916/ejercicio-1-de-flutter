import 'dart:collection';  // Importa el paquete 'collection' para usar la clase LinkedHashMap.
import 'package:table_calendar/table_calendar.dart';  // Importa el paquete 'table_calendar' para usar el widget de calendario.

/// Clase de ejemplo para representar eventos.
class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

/// Eventos de ejemplo.
///
/// El uso de un [LinkedHashMap] es muy recomendado si decides usar un mapa.
final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);

final _kEventSource = { 
  for (var item in List.generate(50, (index) => index)) 
    DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5): List.generate(
        item % 4 + 1, (index) => Event('Evento $item | ${index + 1}')
    )
} 
  ..addAll({
    kToday: [
      const Event('Evento de Hoy 1'),
      const Event('Evento de Hoy 2'),
    ],
  });

/// Función para calcular el código hash de una fecha [DateTime].
int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

/// Devuelve una lista de objetos [DateTime] desde [first] hasta [last], inclusivo.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
