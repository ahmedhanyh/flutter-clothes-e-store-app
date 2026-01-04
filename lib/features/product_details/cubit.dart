import 'package:clothes_e_shop/features/product_details/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsCubit extends Cubit<DetailsState> {
    DetailsCubit() : super(DetailsInitial());

    void loadDetails() async {

    }
}