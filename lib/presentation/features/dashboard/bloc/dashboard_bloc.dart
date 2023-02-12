import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain_layer/domain_layer.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardViewModel {
  final List<CategoriesDTO> categories;
  final List<BrandDTO> brands;
  final List<ProductDTO> products;
  final List<ColorInfo> colorInfo;

  int productCount = 0;

  DashboardViewModel(
    this.categories,
    this.brands,
    this.products,
    this.productCount,
    this.colorInfo,
  );
}

class DashboardBloc extends Bloc<DashboardEvent, DashboardState>
    implements GetAllUseCaseInjection {
  DashboardViewModel? data;
  DashboardBloc() : super(const Initial()) {
    on<GetAllDetailEvent>(_onGetAllDetailEvent);
  }

  void _onGetAllDetailEvent(
    GetAllDetailEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(const DashboardState.loading());
    final categories = await getAllDataUseCase.fetchAllCategories();
    final brands = await getAllDataUseCase.fetchAllBrandData();
    final products = await getAllDataUseCase.fetchAllProductsData();
    final colorInfo = await getAllDataUseCase.fetchAllColorInfoData();
    data = DashboardViewModel(
      categories,
      brands,
      products,
      products.length,
      colorInfo,
    );
    emit(DashboardState.loaded(viewModel: data!));
  }

  BrandDTO? brand(String uniqueId) {
    return data?.brands.firstWhere((element) => element.uniqueId == uniqueId);
  }
}
