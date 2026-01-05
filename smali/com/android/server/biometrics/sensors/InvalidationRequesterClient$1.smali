.class public final Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;
.super Landroid/hardware/biometrics/IInvalidationCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    invoke-direct {p0}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/android/server/biometrics/sensors/BiometricUtils;->setInvalidationInProgress(Landroid/content/Context;IZ)V

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method
