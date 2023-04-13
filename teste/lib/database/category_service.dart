import 'package:teste/database/repository.dart';
import 'package:teste/model/category.dart';

class CategoryService{
  Repository? _repository;

  CategoryService(){
    _repository = Repository();
  }
  saveCategory(Categoria categoria)async {

    return await _repository!.insertData('categoria', categoria.toJson());

  }
}