List<T> Function(List<Map<String, dynamic>>) listModel<T>(
  T Function(Map<String, dynamic>) model,
) {
  return (List<Map<String, dynamic>>? json) {
    if (json == null || json.isEmpty) return [];
    return json.map(model).toList();
  };
}
