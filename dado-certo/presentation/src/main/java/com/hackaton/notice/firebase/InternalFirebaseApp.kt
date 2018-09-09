package com.hackaton.notice.firebase

import com.google.firebase.FirebaseApp
import io.reactivex.Single

interface InternalFirebaseApp {
    fun init(): Single<FirebaseApp>
}