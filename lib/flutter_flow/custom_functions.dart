import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

List<Languages> stringListToLanguagesEnum(List<String> languageStrings) {
  if (languageStrings.isEmpty) {
    return [];
  }

  List<Languages> result = [];

  for (String langString in languageStrings) {
    try {
      // Convert string to lowercase and trim whitespace
      String normalized = langString.trim().toLowerCase();

      // Match string to enum value
      Languages? language = Languages.values.firstWhere(
        (e) => e.name.toLowerCase() == normalized,
        orElse: () => throw Exception('Language not found'),
      );

      result.add(language);
    } catch (e) {
      // Skip invalid values or optionally log them
      print('Warning: Could not parse language: $langString');
      // Continue to next item
    }
  }

  return result;
}

List<Tags> stringListToTagsEnum(List<String> tagStrings) {
  if (tagStrings.isEmpty) {
    return [];
  }

  List<Tags> result = [];

  for (String tagString in tagStrings) {
    try {
      // Convert string to lowercase and trim whitespace
      String normalized = tagString.trim().toLowerCase();

      // Match string to enum value
      Tags? tag = Tags.values.firstWhere(
        (e) => e.name.toLowerCase() == normalized,
        orElse: () => throw Exception('Tag not found'),
      );

      result.add(tag);
    } catch (e) {
      // Skip invalid values or optionally log them
      print('Warning: Could not parse tag: $tagString');
      // Continue to next item
    }
  }

  return result;
}

bool hasLanguagesIntersection(
  List<Languages> projLangs,
  List<Languages> filterLangs,
) {
  // Convert first list to Set for O(1) lookup
  Set<Languages> set1 = projLangs.toSet();

  // Check if any element from list2 exists in set1
  return filterLangs.any((language) => set1.contains(language));
}

bool hasTagsIntersection(
  List<Tags> projTags,
  List<Tags> filterTags,
) {
  // Convert first list to Set for O(1) lookup
  Set<Tags> set1 = projTags.toSet();

  // Check if any element from list2 exists in set1
  return filterTags.any((tag) => set1.contains(tag));
}
