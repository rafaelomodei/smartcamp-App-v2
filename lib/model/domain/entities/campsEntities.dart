import 'package:smartcamp/model/domain/entities/plantingEntitie.dart';

class CampEntities {
  final String id;
  final String name;
  final List<PlantingEntities> planting;

  const CampEntities({
    required this.id,
    required this.name,
    required this.planting,
  });
}
