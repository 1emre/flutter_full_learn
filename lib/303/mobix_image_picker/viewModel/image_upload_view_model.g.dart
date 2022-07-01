// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_upload_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ImageUploadViewModel on _ImageUploadViewModelBase, Store {
  late final _$imageUrlAtom =
      Atom(name: '_ImageUploadViewModelBase.imageUrl', context: context);

  @override
  String get imageUrl {
    _$imageUrlAtom.reportRead();
    return super.imageUrl;
  }

  @override
  set imageUrl(String value) {
    _$imageUrlAtom.reportWrite(value, super.imageUrl, () {
      super.imageUrl = value;
    });
  }

  late final _$fileAtom =
      Atom(name: '_ImageUploadViewModelBase.file', context: context);

  @override
  File? get file {
    _$fileAtom.reportRead();
    return super.file;
  }

  @override
  set file(File? value) {
    _$fileAtom.reportWrite(value, super.file, () {
      super.file = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_ImageUploadViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$downLoadTextAtom =
      Atom(name: '_ImageUploadViewModelBase.downLoadText', context: context);

  @override
  String get downLoadText {
    _$downLoadTextAtom.reportRead();
    return super.downLoadText;
  }

  @override
  set downLoadText(String value) {
    _$downLoadTextAtom.reportWrite(value, super.downLoadText, () {
      super.downLoadText = value;
    });
  }

  late final _$_ImageUploadViewModelBaseActionController =
      ActionController(name: '_ImageUploadViewModelBase', context: context);

  @override
  void changeLoading() {
    final _$actionInfo = _$_ImageUploadViewModelBaseActionController
        .startAction(name: '_ImageUploadViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_ImageUploadViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void uploadDownloadText(int sent, int total) {
    final _$actionInfo = _$_ImageUploadViewModelBaseActionController
        .startAction(name: '_ImageUploadViewModelBase.uploadDownloadText');
    try {
      return super.uploadDownloadText(sent, total);
    } finally {
      _$_ImageUploadViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void uploadImageUrl(ImageUploadResponse? response) {
    final _$actionInfo = _$_ImageUploadViewModelBaseActionController
        .startAction(name: '_ImageUploadViewModelBase.uploadImageUrl');
    try {
      return super.uploadImageUrl(response);
    } finally {
      _$_ImageUploadViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void saveLocalFile(XFile? file) {
    final _$actionInfo = _$_ImageUploadViewModelBaseActionController
        .startAction(name: '_ImageUploadViewModelBase.saveLocalFile');
    try {
      return super.saveLocalFile(file);
    } finally {
      _$_ImageUploadViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imageUrl: ${imageUrl},
file: ${file},
isLoading: ${isLoading},
downLoadText: ${downLoadText}
    ''';
  }
}
