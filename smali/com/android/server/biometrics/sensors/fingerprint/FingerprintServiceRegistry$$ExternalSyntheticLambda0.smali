.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceRegistry$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$1$$ExternalSyntheticLambda2;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricServiceRegistry;->registerAllInBackground(Ljava/util/function/Supplier;)V

    return-void
.end method
