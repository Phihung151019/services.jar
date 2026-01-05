.class public Lcom/samsung/android/battauthmanager/BattAuthHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "authentication_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public native makeChallengeReq(II)[B
.end method

.method public native makeGetCertReq(IIIIII)[B
.end method

.method public native makeGetDigestsReq(BI)[B
.end method

.method public native readDataFromBattMisc()[B
.end method

.method public native verifyChallengeAuth([B[B[B[B)Z
.end method

.method public native verifyWpcCertChain([B)[B
.end method

.method public native writeDataToBattMisc([B)I
.end method
