abstract class LoginState {}

class InitialState extends LoginState{}
class LoadingState extends LoginState{}
class SuccessedState extends LoginState{}
class FailureState extends LoginState{}