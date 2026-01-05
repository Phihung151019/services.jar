.class public interface abstract Lcom/android/server/biometrics/sensors/BiometricUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
.end method

.method public abstract deleteStateForUser(I)V
.end method

.method public abstract getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
.end method

.method public abstract hasValidBiometricUserState(Landroid/content/Context;I)Z
.end method

.method public abstract removeBiometricForUser(Landroid/content/Context;II)V
.end method

.method public abstract setInvalidationInProgress(Landroid/content/Context;IZ)V
.end method
