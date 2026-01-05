.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl;->mSysUiCallback:Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$SysUiCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpSysUiImpl$SysUiCallback;->onSysUiError(II)V

    :cond_0
    return-void
.end method
