.class public interface abstract Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# virtual methods
.method public abstract authenticate(J)I
.end method

.method public abstract cancel()I
.end method

.method public abstract enroll(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
.end method

.method public abstract enumerate()I
.end method

.method public abstract generateChallenge()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method

.method public abstract getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method

.method public abstract getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
.end method

.method public abstract remove(I)I
.end method

.method public abstract resetLockout(Ljava/util/ArrayList;)I
.end method

.method public abstract revokeChallenge()I
.end method

.method public abstract setActiveUser(ILjava/lang/String;)I
.end method

.method public abstract setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
.end method

.method public abstract setFeature(IZLjava/util/ArrayList;I)I
.end method

.method public abstract userActivity()V
.end method
