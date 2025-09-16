// lib/src/presentation/providers/search_providers.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Search query state
final searchQueryProvider = StateProvider<String>((ref) => '');

// Search loading state
final isSearchingProvider = StateProvider<bool>((ref) => false);