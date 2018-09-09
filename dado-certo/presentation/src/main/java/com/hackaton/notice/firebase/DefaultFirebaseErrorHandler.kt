package com.hackaton.notice.firebase

import com.google.firebase.FirebaseNetworkException
import com.google.firebase.FirebaseTooManyRequestsException
import com.google.firebase.auth.FirebaseAuthException

class DefaultFirebaseErrorHandler : FirebaseErrorHandler {

    companion object {
        private const val ERROR_INVALID_EMAIL = "ERROR_INVALID_EMAIL"
    }

    override fun getMessageError(exception: Exception): String {
        return when (exception) {
            is FirebaseTooManyRequestsException -> "Por favor, vá com calma, assim vou ficar cansado"
            is FirebaseNetworkException -> "Oops, seu dispositivo esta sem internet"
            is FirebaseAuthException -> resolveFirebaseAuthException(exception.errorCode)
            else -> "Oops. Ação indisponível no momento. Por favor tente mais tarde."
        }
    }

    private fun resolveFirebaseAuthException(errorCode: String) = when (errorCode) {
        ERROR_INVALID_EMAIL -> "Email inválido"
        else -> "Email ou senha incorretos"
    }
}