part of '../data.dart';

class QuestionDto {
  QuestionDto({
    this.id,
    this.questionId,
    this.questionContent,
    this.questionLevel,
    this.examContent,
    this.questionImage,
    this.type,
    this.mainCategoryId,
    this.mainCategoryTitle,
    this.subCategoryId1,
    this.subCategoryId1Title,
    this.subCategoryId2,
    this.subCategoryId2Title,
    this.subCategoryId3,
    this.subCategoryId3Title,
    this.answer1,
    this.answer2,
    this.answer3,
    this.answer4,
    this.correctAnswer,
    // this.selectAnswer,
    this.answer,
  });

  factory QuestionDto.fromJson(final String str) => QuestionDto.fromMap(json.decode(str));

  factory QuestionDto.fromMap(final Map<String, dynamic> json) => QuestionDto(
    id: json["id"],
    questionId: json["questionId"],
    questionContent: json["question_content"],
    questionLevel: json["questionLevel"],
    examContent: json["exam_content"],
    questionImage: json["question_image"],
    type: json["type"],
    mainCategoryId: json["main_category_id"],
    mainCategoryTitle: json["main_category_title"],
    subCategoryId1: json["sub_category_id_1"],
    subCategoryId1Title: json["sub_category_id_1_title"],
    subCategoryId2: json["sub_category_id_2"],
    subCategoryId2Title: json["sub_category_id_2_title"],
    subCategoryId3: json["sub_category_id_3"],
    subCategoryId3Title: json["sub_category_id_3_title"],
    answer1: json["answer_1"],
    answer2: json["answer_2"],
    answer3: json["answer_3"],
    answer4: json["answer_4"],
    correctAnswer: json["correct_answer"],
    // selectAnswer: json["select_answer"],
    answer: json["answer"],
  );
  int? id;
  int? questionId;
  String? questionContent;
  String? questionLevel;
  String? examContent;
  String? questionImage;
  String? type;
  int? mainCategoryId;
  String? mainCategoryTitle;
  int? subCategoryId1;
  String? subCategoryId1Title;
  int? subCategoryId2;
  String? subCategoryId2Title;
  int? subCategoryId3;
  String? subCategoryId3Title;
  String? answer1;
  String? answer2;
  String? answer3;
  String? answer4;
  int? correctAnswer;

  // int? selectAnswer;
  int? answer;
  TextEditingController? questionController;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "id": id,
    "questionId": questionId,
    "question_content": questionContent,
    "questionLevel": questionLevel,
    "exam_content": examContent,
    "question_image": questionImage,
    "type": type,
    "main_category_id": mainCategoryId,
    "main_category_title": mainCategoryTitle,
    "sub_category_id_1": subCategoryId1,
    "sub_category_id_1_title": subCategoryId1Title,
    "sub_category_id_2": subCategoryId2,
    "sub_category_id_2_title": subCategoryId2Title,
    "sub_category_id_3": subCategoryId3,
    "sub_category_id_3_title": subCategoryId3Title,
    "answer_1": answer1,
    "answer_2": answer2,
    "answer_3": answer3,
    "answer_4": answer4,
    "correct_answer": correctAnswer,
    // "select_answer": selectAnswer,
    "answer": answer,
  };

  QuestionDto copyWith({
    int? id,
    String? questionContent,
    dynamic questionImage,
    dynamic questionImageMemory,
    dynamic questionImageMemoryNetwork,
    String? type,
    String? orientation,
    String? questionType,
    int? widthPage,
    int? heightPage,
    int? mainCategoryId,
    String? mainCategoryTitle,
    int? subCategoryId1,
    String? subCategoryId1Title,
    int? subCategoryId2,
    String? subCategoryId2Title,
    int? subCategoryId3,
    String? subCategoryId3Title,
    String? questionLevel,
    String? answerType,
    String? answer1,
    String? answer2,
    String? answer3,
    String? answer4,
    String? answer5,
    String? answer6,
    String? question1,
    String? question2,
    String? question3,
    String? question4,
    String? question5,
    String? question6,
    String? randomAnswer1,
    String? randomAnswer2,
    String? randomAnswer3,
    String? randomAnswer4,
    String? randomAnswer5,
    String? randomAnswer6,
    String? randomQuestion1,
    String? randomQuestion2,
    String? randomQuestion3,
    String? randomQuestion4,
    String? randomQuestion5,
    String? randomQuestion6,
    int? correctAnswer,
    int? answer,
    String? answerString1,
    String? answerString2,
    String? answerString3,
    String? answerString4,
    String? answerString5,
    String? answerString6,
    double? score,
    int? numberAnswer,
    bool? isQuestionProfessional,
    String? imageAlign,
    String? examContent,
    int? questionId,
  }) {
    return QuestionDto(
      id: id ?? this.id,
      questionContent: questionContent ?? this.questionContent,
      questionImage: questionImage ?? this.questionImage,
      type: type ?? this.type,
      mainCategoryId: mainCategoryId ?? this.mainCategoryId,
      mainCategoryTitle: mainCategoryTitle ?? this.mainCategoryTitle,
      subCategoryId1: subCategoryId1 ?? this.subCategoryId1,
      subCategoryId1Title: subCategoryId1Title ?? this.subCategoryId1Title,
      subCategoryId2: subCategoryId2 ?? this.subCategoryId2,
      subCategoryId2Title: subCategoryId2Title ?? this.subCategoryId2Title,
      subCategoryId3: subCategoryId3 ?? this.subCategoryId3,
      subCategoryId3Title: subCategoryId3Title ?? this.subCategoryId3Title,
      questionLevel: questionLevel ?? this.questionLevel,
      answer1: answer1 ?? this.answer1,
      answer2: answer2 ?? this.answer2,
      answer3: answer3 ?? this.answer3,
      answer4: answer4 ?? this.answer4,
      correctAnswer: correctAnswer ?? this.correctAnswer,
      answer: answer ?? this.answer,
      examContent: examContent??this.examContent,
      questionId: questionId??this.questionId,


    );
  }





}

class CreateQuestionDto {
  CreateQuestionDto({
    this.id,
    this.questionId,
    this.questionContent,
    this.examContent,
    this.questionImage,
    this.questionImageMemory,
    this.type,
    this.score,
    this.mainCategoryId,
    this.mainCategoryTitle,
    this.subCategoryId1,
    this.subCategoryId1Title,
    this.subCategoryId2,
    this.subCategoryId2Title,
    this.subCategoryId3,
    this.subCategoryId3Title,
    this.answer1,
    this.answer2,
    this.answer3,
    this.answer4,
    this.typeAnswer,
    this.correctAnswer,
    this.numberAnswer,
    // this.selectAnswer,
    this.answer,
  });

  factory CreateQuestionDto.fromJson(final String str) => CreateQuestionDto.fromMap(json.decode(str));

  factory CreateQuestionDto.fromMap(final Map<String, dynamic> json) => CreateQuestionDto(
    id: json["id"],
    questionId: json["questionId"],
    questionContent: json["question_content"],
    examContent: json["exam_content"],
    questionImage: json["question_image"],
    questionImageMemory: json["question_image_memory"],
    typeAnswer: json["type_answer"],
    type: json["type"],
    mainCategoryId: json["main_category_id"],
    mainCategoryTitle: json["main_category_title"],
    subCategoryId1: json["sub_category_id_1"],
    subCategoryId1Title: json["sub_category_id_1_title"],
    subCategoryId2: json["sub_category_id_2"],
    subCategoryId2Title: json["sub_category_id_2_title"],
    subCategoryId3: json["sub_category_id_3"],
    subCategoryId3Title: json["sub_category_id_3_title"],
    score: json["score"],
    answer1: json["answer_1"],
    answer2: json["answer_2"],
    answer3: json["answer_3"],
    answer4: json["answer_4"],
    correctAnswer: json["correct_answer"],
    numberAnswer: json["number_answer"],
    // selectAnswer: json["select_answer"],
    answer: json["answer"],
  );
  int? id;
  int? questionId;
  String? questionContent;
  String? examContent;
  String? questionImage;
  Uint8List? questionImageMemory;
  String? type;
  int? mainCategoryId;
  double? score;
  int? typeAnswer;
  String? mainCategoryTitle;
  int? subCategoryId1;
  String? subCategoryId1Title;
  int? subCategoryId2;
  String? subCategoryId2Title;
  int? subCategoryId3;
  String? subCategoryId3Title;
  String? answer1;
  String? answer2;
  String? answer3;
  String? answer4;
  int? correctAnswer;
  int? numberAnswer;

  // int? selectAnswer;
  int? answer;
  TextEditingController? questionController;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "id": id,
    "questionId": questionId,
    "question_content": questionContent,
    "exam_content": examContent,
    "score": score,
    "type_answer": typeAnswer,
    "number_answer": numberAnswer,
    "question_image": questionImage,
    "question_image_memory": questionImageMemory,
    "type": type,
    "main_category_id": mainCategoryId,
    "main_category_title": mainCategoryTitle,
    "sub_category_id_1": subCategoryId1,
    "sub_category_id_1_title": subCategoryId1Title,
    "sub_category_id_2": subCategoryId2,
    "sub_category_id_2_title": subCategoryId2Title,
    "sub_category_id_3": subCategoryId3,
    "sub_category_id_3_title": subCategoryId3Title,
    "answer_1": answer1,
    "answer_2": answer2,
    "answer_3": answer3,
    "answer_4": answer4,
    "correct_answer": correctAnswer,
    // "select_answer": selectAnswer,
    "answer": answer,
  };
}

class StartCompetitionDto {
  StartCompetitionDto({
    this.id,
    this.userId,
    this.userId2,
    this.lastTurnId,
    this.lastStep,
    this.questionLevel,
    this.title,
    this.registerDate,
    this.type,
    this.updatedAt,
    this.createdAt,
  });

  factory StartCompetitionDto.fromJson(final String str) => StartCompetitionDto.fromMap(json.decode(str));

  factory StartCompetitionDto.fromMap(final Map<String, dynamic> json) => StartCompetitionDto(
    id: json["id"],
    userId: json["user_id"],
    userId2: json["user_id2"],
    lastTurnId: json["lastTurnId"],
    lastStep: json["lastStep"],
    questionLevel: json["questionLevel"],
    title: json["title"],
    registerDate: json["register_date"],
    type: json["type"],
    updatedAt: json["updated_at"],
    createdAt: json["created_at"],
  );
  int? id;
  int? userId;
  int? userId2;
  int? lastTurnId;
  int? lastStep;
  String? questionLevel;
  String? title;
  String? registerDate;
  String? type;
  String? updatedAt;
  String? createdAt;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "id": id,
    "user_id": userId,
    "user_id2": userId2,
    "questionId": lastTurnId,
    "lastStep": lastStep,
    "questionLevel": questionLevel,
    "title": title,
    "register_date": registerDate,
    "type": type,
    "updated_at": updatedAt,
    "created_at": createdAt,
  };
}

class StoreQuestionReport {
  StoreQuestionReport({
    this.parentId,
    this.questionList,
    this.totalCorrect,
    this.totalFalse,
    this.totalNothing,
    this.questionLevel,
    this.mainCategoryId,
    this.subCategoryId1,
    this.subCategoryId2,
    this.subCategoryId3,
    this.step,
    this.userId,
  });

  factory StoreQuestionReport.fromJson(final String str) => StoreQuestionReport.fromMap(json.decode(str));

  factory StoreQuestionReport.fromMap(final Map<String, dynamic> json) => StoreQuestionReport(
    questionList: json["questionList"] == null
        ? <StoreQuestionList>[]
        : List<StoreQuestionList>.from(json["questionList"].cast<Map<String, dynamic>>().map(StoreQuestionList.fromMap)).toList(),
    parentId: json["parentId"],
    totalCorrect: json["totalCorrect"],
    totalFalse: json["totalFalse"],
    totalNothing: json["totalNothing"],
    questionLevel: json["questionLevel"],
    mainCategoryId: json["main_category_id"],
    subCategoryId1: json["sub_category_id_1"],
    subCategoryId2: json["sub_category_id_2"],
    subCategoryId3: json["sub_category_id_3"],
    step: json["step"],
    userId: json["userId"],
  );
  List<StoreQuestionList>? questionList;
  String? totalCorrect;
  int? parentId;
  String? totalFalse;
  String? totalNothing;
  String? questionLevel;
  String? mainCategoryId;
  String? subCategoryId1;
  String? subCategoryId2;
  String? subCategoryId3;
  int? step;
  int? userId;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "questionList": questionList == null ? <dynamic>[] : List<dynamic>.from(questionList!.map((final StoreQuestionList x) => x.toJson())).toString(),
    "totalCorrect": totalCorrect,
    "parentId": parentId,
    "totalFalse": totalFalse,
    "totalNothing": totalNothing,
    "questionLevel": questionLevel,
    "main_category_id": mainCategoryId,
    "sub_category_id_1": subCategoryId1,
    "sub_category_id_2": subCategoryId2,
    "sub_category_id_3": subCategoryId3,
    "step": step,
    "userId": userId,
  };
}

class StoreQuestionList {
  StoreQuestionList({
    this.id,
    this.answer,
  });

  factory StoreQuestionList.fromJson(final String str) => StoreQuestionList.fromMap(json.decode(str));

  factory StoreQuestionList.fromMap(final Map<String, dynamic> json) => StoreQuestionList(
    id: json["id"],
    answer: json["answer"],
  );
  int? id;
  int? answer;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "id": id,
    "answer": answer,
  };
}

class ReportQuestionResult {
  ReportQuestionResult({
    this.questionReportHeader,
    this.questionReportList,
    this.test,
  });

  factory ReportQuestionResult.fromMap(final Map<String, dynamic> json) => ReportQuestionResult(
    questionReportHeader: json["questionReportHeader"] == null ? null : QuestionReportHeader.fromMap(json["questionReportHeader"]),
    questionReportList: json["questionReportList"] == null
        ? <QuestionReportList>[]
        : List<QuestionReportList>.from(json["questionReportList"].cast<Map<String, dynamic>>().map(QuestionReportList.fromMap)).toList(),
    test: json["test"],
  );

  factory ReportQuestionResult.fromJson(final String str) => ReportQuestionResult.fromMap(json.decode(str));
  QuestionReportHeader? questionReportHeader;
  List<QuestionReportList>? questionReportList;
  String? test;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "questionReportHeader": questionReportHeader?.toMap(),
    "questionReportList": questionReportList == null ? <dynamic>[] : List<dynamic>.from(questionReportList!.map((final QuestionReportList x) => x.toJson())).toString(),
    "test": test,
  };
}

class QuestionReportHeader {
  QuestionReportHeader({
    this.id,
    this.title,
    this.fullName,
    this.type,
    this.registerDate,
    this.totalCorrect,
    this.totalFalse,
    this.totalNothing,
    this.mainCategoryTitle,
    this.subCategoryTitle1,
    this.subCategoryTitle2,
    this.subCategoryTitle3,
  });

  factory QuestionReportHeader.fromJson(final String str) => QuestionReportHeader.fromMap(json.decode(str));

  factory QuestionReportHeader.fromMap(final Map<String, dynamic> json) => QuestionReportHeader(
    id: json["id"],
    title: json["title"],
    fullName: json["full_name"],
    type: json["type"],
    mainCategoryTitle: json["main_category_title"],
    subCategoryTitle1: json["sub_category_title_1"],
    subCategoryTitle2: json["sub_category_title_2"],
    subCategoryTitle3: json["sub_category_title_3"],
    registerDate: json["register_date"],
    totalCorrect: json["totalCorrect"].toString(),
    totalFalse: json["totalFalse"].toString(),
    totalNothing: json["totalNothing"].toString(),
  );
  int? id;
  String? title;
  String? fullName;
  String? registerDate;
  String? type;
  String? totalCorrect;
  String? totalFalse;
  String? totalNothing;
  String? mainCategoryTitle;
  String? subCategoryTitle1;
  String? subCategoryTitle2;
  String? subCategoryTitle3;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "id": id,
    "title": title,
    "full_name": fullName,
    "register_date": registerDate,
    "type": type,
    "totalCorrect": totalCorrect,
    "totalFalse": totalFalse,
    "totalNothing": totalNothing,
  };
}

class QuestionReportList {
  QuestionReportList({
    this.id,
    this.correctAnswer,
    this.questionContent,
    this.examContent,
    this.questionImage,
    this.type,
    this.answer1,
    this.answer2,
    this.answer3,
    this.answer4,
    this.questionLevel,
    this.answer,
  });

  factory QuestionReportList.fromJson(final String str) => QuestionReportList.fromMap(json.decode(str));

  factory QuestionReportList.fromMap(final Map<String, dynamic> json) => QuestionReportList(
    id: json["id"],
    correctAnswer: int.parse(json["correct_answer"].toString()),
    questionContent: json["question_content"],
    examContent: json["exam_content"],
    questionImage: json["question_image"],
    type: json["type"],
    answer1: json["answer_1"],
    answer2: json["answer_2"],
    answer3: json["answer_3"],
    answer4: json["answer_4"],
    questionLevel: json["questionLevel"],
    answer: int.parse(json["answer"].toString()),
  );
  int? id;
  int? correctAnswer;
  String? questionContent;
  String? examContent;
  String? questionImage;
  String? type;
  String? answer1;
  String? answer2;
  String? answer3;
  String? answer4;
  String? questionLevel;
  int? answer;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "id": id,
    "correct_answer": correctAnswer,
    "question_content": questionContent,
    "exam_content": examContent,
    "question_image": questionImage,
    "type": type,
    "answer_1": answer1,
    "answer_2": answer2,
    "answer_3": answer3,
    "answer_4": answer4,
    "questionLevel": questionLevel,
    "answer": answer,
  };
}

class HistoryDto {
  HistoryDto({
    this.userId,
    this.userName,
    this.userAvatar,
    this.userId2,
    this.userName2,
    this.userAvatar2,
    this.userScore,
    this.user2Score,
  });

  factory HistoryDto.fromJson(final String str) => HistoryDto.fromMap(json.decode(str));

  factory HistoryDto.fromMap(final Map<String, dynamic> json) => HistoryDto(
    userId: json["user_id"],
    userName: json["user_name"],
    userAvatar: json["user_avatar"],
    userId2: json["user_id2"],
    userName2: json["user_name2"],
    userAvatar2: json["user_avatar2"],
    userScore: json["user_score"],
    user2Score: json["user2_score"],
  );
  int? userId;
  String? userName;
  String? userAvatar;
  int? userId2;
  int? userScore;
  int? user2Score;
  String? userName2;
  String? userAvatar2;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "user_id": userId,
    "user_name": userName,
    "user_avatar": userAvatar,
    "user_id2": userId2,
    "user_name2": userName2,
    "user_avatar2": userAvatar2,
    "user_score": userScore,
    "user2_score": user2Score,
  };
}

class UserCompetitionDto {
  UserCompetitionDto({
    this.id,
    this.status,
    this.title,
    this.userId,
    this.userId2,
    this.userName,
    this.userName2,
    this.userAvatar,
    this.userAvatar2,
    this.step,
    this.lastTurnId,
    this.lastCategoryId,
    this.lastBookUserId,
    this.totalCount,
    this.totalCorrect,
    this.totalCorrect2,
    this.mainCategoryId,
    this.mainCategoryTitle,
    this.subCategoryId1,
    this.subCategoryId1Title,
    this.subCategoryId2,
    this.subCategoryId2Title,
    this.subCategoryId3,
    this.subCategoryId3Title,
    this.answer,
  });

  factory UserCompetitionDto.fromJson(final String str) => UserCompetitionDto.fromMap(json.decode(str));

  factory UserCompetitionDto.fromMap(final Map<String, dynamic> json) => UserCompetitionDto(
    id: json["id"],
    status: json["status"],
    title: json["title"],
    userId: json["user_id"],
    userId2: json["user_id2"],
    userName: json["user_name"],
    userName2: json["user_name2"],
    userAvatar: json["user_avatar"],
    userAvatar2: json["user_avatar2"],
    step: json["step"],
    lastTurnId: json["lastTurnId"],
    lastBookUserId: json["lastBookUserId"],
    lastCategoryId: json["lastCategoryId"],
    totalCount: json["totalCount"],
    totalCorrect: json["totalCorrect"],
    totalCorrect2: json["totalCorrect2"],
    mainCategoryId: json["main_category_id"],
    mainCategoryTitle: json["main_category_title"],
    subCategoryId1: json["sub_category_id_1"],
    subCategoryId1Title: json["sub_category_id_1_title"],
    subCategoryId2: json["sub_category_id_2"],
    subCategoryId2Title: json["sub_category_id_2_title"],
    subCategoryId3: json["sub_category_id_3"],
    subCategoryId3Title: json["sub_category_id_3_title"],
  );
  int? id;
  int? status;
  String? title;
  int? userId;
  int? userId2;
  String? userName;
  String? userName2;
  String? userAvatar;
  String? userAvatar2;
  int? step;
  int? lastTurnId;
  dynamic lastCategoryId;
  int? lastBookUserId;
  int? totalCount;
  int? totalCorrect;
  int? totalCorrect2;
  int? mainCategoryId;
  String? mainCategoryTitle;
  int? subCategoryId1;
  String? subCategoryId1Title;
  int? subCategoryId2;
  String? subCategoryId2Title;
  int? subCategoryId3;
  String? subCategoryId3Title;
  int? answer;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "id": id,
    "status": status,
    "lastBookUserId": lastBookUserId,
    "title": title,
    "user_id": userId,
    "user_id2": userId2,
    "user_name": userName,
    "user_name2": userName2,
    "user_avatar": userAvatar,
    "user_avatar2": userAvatar2,
    "step": step,
    "lastTurnId": lastTurnId,
    "lastCategoryId": lastCategoryId,
    "totalCount": totalCount,
    "totalCorrect": totalCorrect,
    "totalCorrect2": totalCorrect2,
    "main_category_id": mainCategoryId,
    "main_category_title": mainCategoryTitle,
    "sub_category_id_1": subCategoryId1,
    "sub_category_id_1_title": subCategoryId1Title,
    "sub_category_id_2": subCategoryId2,
    "sub_category_id_2_title": subCategoryId2Title,
    "sub_category_id_3": subCategoryId3,
    "sub_category_id_3_title": subCategoryId3Title,
  };
}

class QuestionBankDto {
  QuestionBankDto({
    this.id,
    this.questionContent,
    this.questionImage,
    this.questionImageMemory,
    this.questionImageMemoryNetwork,
    this.type,
    this.answer,
    this.mainCategoryId,
    this.mainCategoryTitle,
    this.subCategoryId1,
    this.subCategoryId1Title,
    this.subCategoryId2,
    this.subCategoryId2Title,
    this.subCategoryId3,
    this.subCategoryId3Title,
    this.questionLevel,
    this.answerType,
    this.answer1,
    this.answer2,
    this.answer3,
    this.answer4,
    this.answer5,
    this.answer6,
    this.question1,
    this.question2,
    this.question3,
    this.question4,
    this.question5,
    this.question6,
    this.imageAlign,
    this.randomAnswer1,
    this.randomAnswer2,
    this.randomAnswer3,
    this.randomAnswer4,
    this.randomAnswer5,
    this.randomAnswer6,
    this.randomQuestion1,
    this.randomQuestion2,
    this.randomQuestion3,
    this.randomQuestion4,
    this.randomQuestion5,
    this.randomQuestion6,
    this.correctAnswer,
    this.score,
    this.widthPage,
    this.orientation,
    this.questionType,
    this.heightPage,
    this.numberAnswer,
    this.isQuestionProfessional,
    this.answerString1,
    this.answerString2,
    this.answerString3,
    this.answerString4,
    this.answerString5,
    this.answerString6,
    // this.keyEditor,
  });

  factory QuestionBankDto.fromJson(final String str) => QuestionBankDto.fromMap(json.decode(str));

  factory QuestionBankDto.fromMap(final Map<String, dynamic> json) => QuestionBankDto(
    id: json["id"],
    questionContent: json["question_content"],
    questionImage: json["question_image"]!=null? "https://corsproxy.io/?${json['question_image']}":null,
    orientation: json["orientation"],
    questionType: json["question_type"],
    questionImageMemory: json["question_image_memory"],
    questionImageMemoryNetwork: json["question_image_memory_network"],
    type: json["type"],
    widthPage: json["widthPage"],
    heightPage: json["heightPage"],
    mainCategoryId: json["main_category_id"],
    mainCategoryTitle: json["main_category_title"],
    subCategoryId1: json["sub_category_id_1"],
    subCategoryId1Title: json["sub_category_id_1_title"],
    subCategoryId2: json["sub_category_id_2"],
    subCategoryId2Title: json["sub_category_id_2_title"],
    subCategoryId3: json["sub_category_id_3"],
    subCategoryId3Title: json["sub_category_id_3_title"],
    questionLevel: json["questionLevel"],
    answerType: json["answer_type"],
    answer1: json["answer_1"],
    answer2: json["answer_2"],
    answer3: json["answer_3"],
    answer4: json["answer_4"],
    answer5: json["answer_5"],
    answer6: json["answer_6"],
    question1: json["question_1"],
    question2: json["question_2"],
    question3: json["question_3"],
    question4: json["question_4"],
    question5: json["question_5"],
    question6: json["question_6"],
    correctAnswer: json["correct_answer"],
    score: json["score"],
    numberAnswer: json["numberAnswer"],
  );
  int? id;
  String? questionContent;
  int? widthPage;
  int? heightPage;
  dynamic questionImage;
  dynamic questionImageMemory;
  dynamic questionImageMemoryNetwork;
  String? type;
  String? orientation;
  String? imageAlign;
  String? questionType;
  int? mainCategoryId;
  String? mainCategoryTitle;
  int? subCategoryId1;
  String? subCategoryId1Title;
  int? subCategoryId2;
  String? subCategoryId2Title;
  int? subCategoryId3;
  String? subCategoryId3Title;
  String? questionLevel;
  String? answerType;
  String? answer1;
  String? answer2;
  String? answer3;
  String? answer4;
  String? answer5;
  String? answer6;
  String? question1;
  String? question2;
  String? question3;
  String? question4;
  String? question5;
  String? question6;
  String? randomAnswer1;
  String? randomAnswer2;
  String? randomAnswer3;
  String? randomAnswer4;
  String? randomAnswer5;
  String? randomAnswer6;
  String? randomQuestion1;
  String? randomQuestion2;
  String? randomQuestion3;
  String? randomQuestion4;
  String? randomQuestion5;
  String? randomQuestion6;
  int? correctAnswer;
  int? answer;
  String? answerString1;
  String? answerString2;
  String? answerString3;
  String? answerString4;
  String? answerString5;
  String? answerString6;
  double? score;
  int? numberAnswer;
  bool? isQuestionProfessional;

  // GlobalKey<FlutterSummernoteState>? keyEditor;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    //
    "id": id,
    "question_content": questionContent,
    "question_type": questionType,
    "question_image": questionImage,
    // "question_image_memory": questionImageMemory,
    "question_image_memory_network": questionImageMemoryNetwork,
    "type": type,
    "orientation": orientation,
    "widthPage": widthPage,
    "heightPage": heightPage,
    "main_category_id": mainCategoryId,
    "main_category_title": mainCategoryTitle,
    "sub_category_id_1": subCategoryId1,
    "sub_category_id_1_title": subCategoryId1Title,
    "sub_category_id_2": subCategoryId2,
    "sub_category_id_2_title": subCategoryId2Title,
    "sub_category_id_3": subCategoryId3,
    "sub_category_id_3_title": subCategoryId3Title,
    "questionLevel": questionLevel,
    "answer_type": answerType,
    "answer_1": answer1,
    "answer_2": answer2,
    "answer_3": answer3,
    "answer_4": answer4,
    "answer_5": answer5,
    "answer_6": answer6,
    "question_1": question1,
    "question_2": question2,
    "question_3": question3,
    "question_4": question4,
    "question_5": question5,
    "question_6": question6,
    "correct_answer": correctAnswer,
    "score": score ?? 0,
    "numberAnswer": numberAnswer,
  };
  QuestionBankDto copyWith({
    int? id,
    String? questionContent,
    dynamic questionImage,
    dynamic questionImageMemory,
    dynamic questionImageMemoryNetwork,
    String? type,
    String? orientation,
    String? questionType,
    int? widthPage,
    int? heightPage,
    int? mainCategoryId,
    String? mainCategoryTitle,
    int? subCategoryId1,
    String? subCategoryId1Title,
    int? subCategoryId2,
    String? subCategoryId2Title,
    int? subCategoryId3,
    String? subCategoryId3Title,
    String? questionLevel,
    String? answerType,
    String? answer1,
    String? answer2,
    String? answer3,
    String? answer4,
    String? answer5,
    String? answer6,
    String? question1,
    String? question2,
    String? question3,
    String? question4,
    String? question5,
    String? question6,
    String? randomAnswer1,
    String? randomAnswer2,
    String? randomAnswer3,
    String? randomAnswer4,
    String? randomAnswer5,
    String? randomAnswer6,
    String? randomQuestion1,
    String? randomQuestion2,
    String? randomQuestion3,
    String? randomQuestion4,
    String? randomQuestion5,
    String? randomQuestion6,
    int? correctAnswer,
    int? answer,
    String? answerString1,
    String? answerString2,
    String? answerString3,
    String? answerString4,
    String? answerString5,
    String? answerString6,
    double? score,
    int? numberAnswer,
    bool? isQuestionProfessional,
    String? imageAlign,
  }) {
    return QuestionBankDto(
      id: id ?? this.id,
      questionContent: questionContent ?? this.questionContent,
      // questionImage: questionImage ?? this.questionImage,
      questionImageMemory: questionImageMemory ?? this.questionImageMemory,
      questionImageMemoryNetwork:
      questionImageMemoryNetwork ?? this.questionImageMemoryNetwork,
      type: type ?? this.type,
      orientation: orientation ?? this.orientation,
      questionType: questionType ?? this.questionType,
      widthPage: widthPage ?? this.widthPage,
      heightPage: heightPage ?? this.heightPage,
      mainCategoryId: mainCategoryId ?? this.mainCategoryId,
      mainCategoryTitle: mainCategoryTitle ?? this.mainCategoryTitle,
      subCategoryId1: subCategoryId1 ?? this.subCategoryId1,
      subCategoryId1Title: subCategoryId1Title ?? this.subCategoryId1Title,
      subCategoryId2: subCategoryId2 ?? this.subCategoryId2,
      subCategoryId2Title: subCategoryId2Title ?? this.subCategoryId2Title,
      subCategoryId3: subCategoryId3 ?? this.subCategoryId3,
      subCategoryId3Title: subCategoryId3Title ?? this.subCategoryId3Title,
      questionLevel: questionLevel ?? this.questionLevel,
      answerType: answerType ?? this.answerType,
      answer1: answer1 ?? this.answer1,
      answer2: answer2 ?? this.answer2,
      answer3: answer3 ?? this.answer3,
      answer4: answer4 ?? this.answer4,
      answer5: answer5 ?? this.answer5,
      answer6: answer6 ?? this.answer6,
      question1: question1 ?? this.question1,
      question2: question2 ?? this.question2,
      question3: question3 ?? this.question3,
      question4: question4 ?? this.question4,
      question5: question5 ?? this.question5,
      question6: question6 ?? this.question6,
      imageAlign:imageAlign ?? this.imageAlign,
      randomAnswer1: randomAnswer1 ?? this.randomAnswer1,
      randomAnswer2: randomAnswer2 ?? this.randomAnswer2,
      randomAnswer3: randomAnswer3 ?? this.randomAnswer3,
      randomAnswer4: randomAnswer4 ?? this.randomAnswer4,
      randomAnswer5: randomAnswer5 ?? this.randomAnswer5,
      randomAnswer6: randomAnswer6 ?? this.randomAnswer6,
      randomQuestion1: randomQuestion1 ?? this.randomQuestion1,
      randomQuestion2: randomQuestion2 ?? this.randomQuestion2,
      randomQuestion3: randomQuestion3 ?? this.randomQuestion3,
      randomQuestion4: randomQuestion4 ?? this.randomQuestion4,
      randomQuestion5: randomQuestion5 ?? this.randomQuestion5,
      randomQuestion6: randomQuestion6 ?? this.randomQuestion6,
      correctAnswer: correctAnswer ?? this.correctAnswer,
      answer: answer ?? this.answer,
      answerString1: answerString1 ?? this.answerString1,
      answerString2: answerString2 ?? this.answerString2,
      answerString3: answerString3 ?? this.answerString3,
      answerString4: answerString4 ?? this.answerString4,
      answerString5: answerString5 ?? this.answerString5,
      answerString6: answerString6 ?? this.answerString6,
      score: score ?? this.score,
      numberAnswer: numberAnswer ?? this.numberAnswer,
      isQuestionProfessional:
      isQuestionProfessional ?? this.isQuestionProfessional,
    );
  }

}

class UserExamDto {
  UserExamDto({
    this.id,
    this.parentId,
    this.userId,
    this.type,
    this.name,
    this.avatar,
  });

  factory UserExamDto.fromJson(final String str) => UserExamDto.fromMap(json.decode(str));

  factory UserExamDto.fromMap(final Map<String, dynamic> json) => UserExamDto(
    id: json["id"],
    parentId: json["parent_id"],
    userId: json["user_id"],
    type: json["type"],
    name: json["name"],
    avatar: json["avatar"],
  );
  int? id;
  int? parentId;
  int? userId;
  String? type;
  String? name;
  String? avatar;

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => <String, dynamic>{
    "id": id,
    "parent_id": parentId,
    "user_id": userId,
    "type": type,
    "name": name,
    "avatar": avatar,
  };
}
