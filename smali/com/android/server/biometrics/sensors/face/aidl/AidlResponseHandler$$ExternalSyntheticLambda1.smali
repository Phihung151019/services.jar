.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/hardware/biometrics/face/EnrollmentFrame;

    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    new-instance v0, Landroid/hardware/face/FaceEnrollFrame;

    iget-object v1, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->cell:Landroid/hardware/biometrics/face/Cell;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/hardware/face/FaceEnrollCell;

    iget v3, v1, Landroid/hardware/biometrics/face/Cell;->x:I

    iget v4, v1, Landroid/hardware/biometrics/face/Cell;->y:I

    iget v1, v1, Landroid/hardware/biometrics/face/Cell;->z:I

    invoke-direct {v2, v3, v4, v1}, Landroid/hardware/face/FaceEnrollCell;-><init>(III)V

    move-object v1, v2

    :goto_0
    iget-byte v2, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->stage:B

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    move v2, v3

    goto :goto_1

    :pswitch_0
    const/16 v2, 0x72

    goto :goto_1

    :pswitch_1
    const/16 v2, 0x71

    goto :goto_1

    :pswitch_2
    const/16 v2, 0x70

    goto :goto_1

    :pswitch_3
    const/16 v2, 0x6f

    goto :goto_1

    :pswitch_4
    const/16 v2, 0x6e

    goto :goto_1

    :pswitch_5
    const/16 v2, 0x68

    goto :goto_1

    :pswitch_6
    const/16 v2, 0x67

    goto :goto_1

    :pswitch_7
    const/16 v2, 0x66

    goto :goto_1

    :pswitch_8
    const/16 v2, 0x65

    goto :goto_1

    :pswitch_9
    const/16 v2, 0x64

    goto :goto_1

    :pswitch_a
    const/4 v2, 0x6

    goto :goto_1

    :pswitch_b
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_c
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_d
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_e
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_f
    const/4 v2, 0x1

    :goto_1
    iget-object p0, p0, Landroid/hardware/biometrics/face/EnrollmentFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    new-instance v4, Landroid/hardware/face/FaceDataFrame;

    iget-byte v5, p0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    move-result v5

    iget v6, p0, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    iget v7, p0, Landroid/hardware/biometrics/face/BaseFrame;->pan:F

    iget v8, p0, Landroid/hardware/biometrics/face/BaseFrame;->tilt:F

    iget v9, p0, Landroid/hardware/biometrics/face/BaseFrame;->distance:F

    iget-boolean v10, p0, Landroid/hardware/biometrics/face/BaseFrame;->isCancellable:Z

    invoke-direct/range {v4 .. v10}, Landroid/hardware/face/FaceDataFrame;-><init>(IIFFFZ)V

    invoke-direct {v0, v1, v2, v4}, Landroid/hardware/face/FaceEnrollFrame;-><init>(Landroid/hardware/face/FaceEnrollCell;ILandroid/hardware/face/FaceDataFrame;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result p0

    invoke-virtual {v0}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v1

    invoke-virtual {p1, p0, v1, v3}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    const/16 v2, 0x16

    if-ne p0, v2, :cond_1

    iget-object v4, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    invoke-static {v1, v4}, Lcom/android/server/biometrics/Utils;->listContains(I[I)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_1
    iget-object v4, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    invoke-static {p0, v4}, Lcom/android/server/biometrics/Utils;->listContains(I[I)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    if-ne p0, v2, :cond_2

    add-int/lit16 v2, v1, 0x3e8

    goto :goto_3

    :cond_2
    move v2, p0

    :goto_3
    :try_start_0
    iget-object v4, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {v4, p0, v1}, Landroid/hardware/face/FaceManager;->getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    iget-object v1, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v4, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;

    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    iget v6, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollReason:I

    invoke-static {v6}, Lcom/android/server/biometrics/sensors/EnrollClient;->getRequestReasonFromFaceEnrollReason(I)I

    move-result v6

    invoke-direct {v4, v5, v6, p0, v2}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    invoke-virtual {v4}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V

    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Landroid/hardware/face/IFaceServiceReceiver;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string v0, "FaceEnrollClient"

    const-string v1, "Failed to send enrollment frame"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p0, p1, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_3
    :goto_4
    return-void

    :pswitch_10
    check-cast p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;

    check-cast p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    iget p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mSensorId:I

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mUserId:I

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v3

    const-wide/16 v4, -0x1

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->resetLockoutFor(IIJ)V

    const/4 p0, 0x0

    invoke-interface {v1, v0, p0}, Lcom/android/server/biometrics/sensors/LockoutTracker;->setLockoutModeForUser(II)V

    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    return-void

    :pswitch_11
    check-cast p0, [B

    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "FaceGetFeatureClient"

    const/4 v2, 0x0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    new-array v4, v4, [I

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    new-array v5, v5, [Z

    move v6, v2

    :goto_5
    array-length v7, p0

    if-ge v6, v7, :cond_4

    aget-byte v7, p0, v6

    invoke-static {v7}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertAidlToFrameworkFeature(B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    :cond_4
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v6, v2

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v4, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    aput-boolean v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Updating attention value for user: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;->mUserId:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to value: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "face_unlock_attention_required"

    iget v7, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;->mUserId:I

    invoke-static {v0, v6, p0, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz p0, :cond_6

    invoke-interface {p0, v3, v4, v5}, Landroid/hardware/face/IFaceServiceReceiver;->onFeatureGet(Z[I[Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p0, p1, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    goto :goto_8

    :goto_7
    const-string/jumbo v0, "exception"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p0, p1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
