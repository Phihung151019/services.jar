.class public final synthetic Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/StartUserClient$UserStartedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    return-void
.end method


# virtual methods
.method public final onUserStarted(IILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;

    iget p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->mCurrentUserId:I

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/HidlToAidlSensorAdapter;->handleUserChanged(I)V

    :cond_0
    return-void
.end method
