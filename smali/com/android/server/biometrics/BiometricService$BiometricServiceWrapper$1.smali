.class public final Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;
.super Lcom/android/server/biometrics/BiometricSensor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;->this$1:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/biometrics/BiometricSensor;-><init>(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V

    return-void
.end method
