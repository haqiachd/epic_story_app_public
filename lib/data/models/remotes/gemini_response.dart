class GeminiResponse {
  List<Candidates>? candidates;

  GeminiResponse({this.candidates});

  GeminiResponse.fromJson(Map<String, dynamic> json) {
    if (json['candidates'] != null) {
      candidates = <Candidates>[];
      json['candidates'].forEach((v) {
        candidates!.add(Candidates.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (candidates != null) {
      data['candidates'] = candidates!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Candidates {
  Content? content;
  String? finishReason;
  int? index;
  List<SafetyRatings>? safetyRatings;

  Candidates({
    this.content,
    this.finishReason,
    this.index,
    this.safetyRatings,
  });

  Candidates.fromJson(Map<String, dynamic> json) {
    content =
        json['content'] != null ? Content.fromJson(json['content']) : null;
    finishReason = json['finishReason'];
    index = json['index'];
    if (json['safetyRatings'] != null) {
      safetyRatings = <SafetyRatings>[];
      json['safetyRatings'].forEach((v) {
        safetyRatings!.add(SafetyRatings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (content != null) {
      data['content'] = content!.toJson();
    }
    data['finishReason'] = finishReason;
    data['index'] = index;
    if (safetyRatings != null) {
      data['safetyRatings'] = safetyRatings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Content {
  List<Parts>? parts;
  String? role;

  Content({this.parts, this.role});

  Content.fromJson(Map<String, dynamic> json) {
    if (json['parts'] != null) {
      parts = <Parts>[];
      json['parts'].forEach((v) {
        parts!.add(Parts.fromJson(v));
      });
    }
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (parts != null) {
      data['parts'] = parts!.map((v) => v.toJson()).toList();
    }
    data['role'] = role;
    return data;
  }
}

class Parts {
  String? text;

  Parts({this.text});

  Parts.fromJson(Map<String, dynamic> json) {
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['text'] = text;
    return data;
  }
}

class SafetyRatings {
  String? category;
  String? probability;

  SafetyRatings({this.category, this.probability});

  SafetyRatings.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    probability = json['probability'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['category'] = category;
    data['probability'] = probability;
    return data;
  }
}
