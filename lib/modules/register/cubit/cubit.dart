import 'package:courses/modules/register/cubit/states.dart';
import 'package:courses/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterCubit extends Cubit<CounterStates>
{
  // create constructor to call super and pass initial state to super
  CounterCubit() : super(CounterStateInitial());

  // create object from my cubit -counter cubit- to call it from any where
  static CounterCubit get(context) => BlocProvider.of(context);



  register({first, last, email, password, city})
  {
    emit(CounterStateLoading());

    DioHelper.postData(
      path: 'lms/api/v1/auth/signup-save',
      data:
      {
        'first_name':'$first',
        'last_name':'$last',
        'email':'$email',
        'password':'$password',
        'city':'$city',
      },
    ).then((value)
    {
      emit(CounterStateSuccess());
    }).catchError((e)
    {
      emit(CounterStateError(e.toString()));
    });
  }
}
