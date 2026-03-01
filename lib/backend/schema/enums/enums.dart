import 'package:collection/collection.dart';

enum NavPages {
  HOME,
  PROJECTS,
  SKILLS,
}

enum Tags {
  Linux,
  ClientServer,
  Docker,
  Nix,
  Flutter,
  Postgresql,
  AI,
  Algorithms,
  DataStructures,
  GameDevelopment,
  EmbeddedSystems,
  Networks,
  Compilation,
}

enum Languages {
  Java,
  Python,
  C,
  Cpp,
  Rust,
  Bash,
}

enum ProjectStatus {
  Completed,
  InProgress,
  Archived,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (NavPages):
      return NavPages.values.deserialize(value) as T?;
    case (Tags):
      return Tags.values.deserialize(value) as T?;
    case (Languages):
      return Languages.values.deserialize(value) as T?;
    case (ProjectStatus):
      return ProjectStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}
