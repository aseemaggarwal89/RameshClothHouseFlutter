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
    implements
        GetAllUseCaseInjection,
        ProductUseCaseInjection {
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
    final products = await getProductDataUseCase.fetchAllProductsData();
    final colorInfo = await getAllDataUseCase.fetchAllColorInfoData();

    final productCount =
        await getProductDataUseCase.fetchProductDataCount(null);
    DashboardViewModel data = DashboardViewModel(
      categories,
      brands,
      products,
      productCount,
      colorInfo,
    );
    emit(DashboardState.loaded(viewModel: data));
  }
}
