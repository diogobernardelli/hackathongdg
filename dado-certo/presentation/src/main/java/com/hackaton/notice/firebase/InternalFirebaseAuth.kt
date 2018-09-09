package com.hackaton.notice.firebase

import com.google.firebase.auth.FirebaseAuth
import io.reactivex.Single

interface InternalFirebaseAuth {
    fun firebaseAuth(): Single<FirebaseAuth>
}