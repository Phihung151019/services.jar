.class public final synthetic Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/hardware/biometrics/face/AuthenticationFrame;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/biometrics/face/AuthenticationFrame;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;->f$0:Landroid/hardware/biometrics/face/AuthenticationFrame;

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;->f$0:Landroid/hardware/biometrics/face/AuthenticationFrame;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/AidlResponseHandler$$ExternalSyntheticLambda19;->f$1:I

    check-cast p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;->getInstance()Lcom/android/server/biometrics/sensors/face/aidl/SemFaceServiceExImpl;

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    iget v2, v2, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object v1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    const/16 v2, 0xb

    if-eq p0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget p0, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityNoFace:I

    goto :goto_0

    :cond_1
    iget p0, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualitySmallFace:I

    goto :goto_0

    :cond_2
    iget p0, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mFaceQualityBigFace:I

    :goto_0
    new-instance p0, Landroid/hardware/face/FaceAuthenticationFrame;

    iget-object v0, v0, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    new-instance v1, Landroid/hardware/face/FaceDataFrame;

    iget-byte v2, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    move-result v2

    iget v3, v0, Landroid/hardware/biometrics/face/BaseFrame;->vendorCode:I

    iget v4, v0, Landroid/hardware/biometrics/face/BaseFrame;->pan:F

    iget v5, v0, Landroid/hardware/biometrics/face/BaseFrame;->tilt:F

    iget v6, v0, Landroid/hardware/biometrics/face/BaseFrame;->distance:F

    iget-boolean v7, v0, Landroid/hardware/biometrics/face/BaseFrame;->isCancellable:Z

    invoke-direct/range {v1 .. v7}, Landroid/hardware/face/FaceDataFrame;-><init>(IIFFFZ)V

    invoke-direct {p0, v1}, Landroid/hardware/face/FaceAuthenticationFrame;-><init>(Landroid/hardware/face/FaceDataFrame;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v0

    invoke-virtual {p0}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    invoke-virtual {p1, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->shouldSendAcquiredMessage$1(II)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v3, :cond_4

    :try_start_0
    iget-object v3, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v4, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;

    sget-object v5, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v6

    invoke-direct {v4, v5, v6, v0}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;II)V

    invoke-virtual {v4}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationAcquired(Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;)V

    iget-object v3, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v4, 0x16

    if-ne v0, v4, :cond_3

    add-int/lit16 v0, v1, 0x3e8

    :cond_3
    iget-object v1, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v4, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v6

    invoke-direct {v4, v5, v6, v3, v0}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    invoke-virtual {v4}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationHelp(Landroid/hardware/biometrics/events/AuthenticationHelpInfo;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mListener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->mFaceServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    if-eqz v0, :cond_5

    invoke-interface {v0, p0}, Landroid/hardware/face/IFaceServiceReceiver;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    const-string v0, "FaceAuthenticationClient"

    const-string v1, "Failed to send authentication frame"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mAuthenticationStateListeners:Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;

    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getRequestReason()I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    invoke-virtual {v0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationStateListeners;->onAuthenticationStopped(Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;)V

    iget-object p0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p0, p1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    :cond_5
    return-void
.end method
