.class public final Lcom/android/server/biometrics/log/BiometricContextProvider;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/log/BiometricContext;


# static fields
.field public static sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;


# instance fields
.field public final mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

.field public mDisplayState:I

.field public mDockState:I

.field final mDockStateReceiver:Landroid/content/BroadcastReceiver;

.field public mFoldState:I

.field public final mHandler:Landroid/os/Handler;

.field public final mIBiometricContextListener:Lcom/android/server/biometrics/log/BiometricContextProvider$2;

.field public final mISessionListener:Lcom/android/server/biometrics/log/BiometricContextProvider$3;

.field public mIsHardwareIgnoringTouches:Z

.field public final mSession:Ljava/util/Map;

.field public final mSubscribers:Ljava/util/Map;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockState:I

    iput v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    iput v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    iput-boolean v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    iput-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockStateReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mWindowManager:Landroid/view/WindowManager;

    iput-object p5, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mAuthSessionCoordinator:Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    iput-object p4, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mHandler:Landroid/os/Handler;

    :try_start_0
    new-instance p2, Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$2;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    iput-object p2, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIBiometricContextListener:Lcom/android/server/biometrics/log/BiometricContextProvider$2;

    invoke-interface {p3, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setBiometicContextListener(Landroid/hardware/biometrics/IBiometricContextListener;)V

    new-instance p2, Lcom/android/server/biometrics/log/BiometricContextProvider$3;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$3;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    iput-object p2, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mISessionListener:Lcom/android/server/biometrics/log/BiometricContextProvider$3;

    const/4 p4, 0x3

    invoke-interface {p3, p4, p2}, Lcom/android/internal/statusbar/IStatusBarService;->registerSessionListener(ILcom/android/internal/statusbar/ISessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "BiometricContextProvider"

    const-string/jumbo p4, "Unable to register biometric context listener"

    invoke-static {p3, p4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string/jumbo p2, "android.intent.action.DOCK_EVENT"

    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p2

    :try_start_1
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final isAwake()Z
    .locals 2

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public final subscribe(Lcom/android/server/biometrics/log/OperationContextExt;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/hardware/biometrics/AuthenticateOptions;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget-boolean v1, v1, Landroid/hardware/biometrics/common/OperationContext;->isCrypto:Z

    invoke-virtual {p1, p0, v1}, Lcom/android/server/biometrics/log/OperationContextExt;->update(Lcom/android/server/biometrics/log/BiometricContext;Z)V

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_8

    instance-of p0, p4, Landroid/hardware/face/FaceAuthenticateOptions;

    const/4 p3, 0x0

    if-eqz p0, :cond_5

    check-cast p4, Landroid/hardware/face/FaceAuthenticateOptions;

    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p4}, Landroid/hardware/face/FaceAuthenticateOptions;->getAuthenticateReason()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x6

    const/4 v6, 0x7

    const/16 v7, 0x8

    const/16 v8, 0x9

    const/16 v9, 0xa

    packed-switch v0, :pswitch_data_0

    move v0, p3

    goto :goto_0

    :pswitch_0
    move v0, v9

    goto :goto_0

    :pswitch_1
    move v0, v8

    goto :goto_0

    :pswitch_2
    move v0, v7

    goto :goto_0

    :pswitch_3
    move v0, v6

    goto :goto_0

    :pswitch_4
    move v0, v5

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_6
    move v0, v4

    goto :goto_0

    :pswitch_7
    move v0, v3

    goto :goto_0

    :pswitch_8
    move v0, v2

    goto :goto_0

    :pswitch_9
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroid/hardware/biometrics/common/AuthenticateReason;->faceAuthenticateReason(I)Landroid/hardware/biometrics/common/AuthenticateReason;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p4}, Landroid/hardware/face/FaceAuthenticateOptions;->getWakeReason()I

    move-result p4

    if-eq p4, v1, :cond_4

    if-eq p4, v4, :cond_3

    if-eq p4, v9, :cond_2

    if-eq p4, v5, :cond_1

    if-eq p4, v6, :cond_0

    packed-switch p4, :pswitch_data_1

    goto :goto_1

    :pswitch_a
    move p3, v8

    goto :goto_1

    :pswitch_b
    move p3, v7

    goto :goto_1

    :pswitch_c
    move p3, v6

    goto :goto_1

    :cond_0
    move p3, v4

    goto :goto_1

    :cond_1
    move p3, v3

    goto :goto_1

    :cond_2
    move p3, v5

    goto :goto_1

    :cond_3
    move p3, v2

    goto :goto_1

    :cond_4
    move p3, v1

    :goto_1
    iput p3, p0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    goto :goto_3

    :cond_5
    instance-of p0, p4, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    if-eqz p0, :cond_7

    check-cast p4, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    invoke-virtual {p4}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-virtual {p4}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object p4

    invoke-static {p4}, Landroid/hardware/biometrics/common/AuthenticateReason;->vendorAuthenticateReason(Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;)Landroid/hardware/biometrics/common/AuthenticateReason;

    move-result-object p4

    iput-object p4, p0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    goto :goto_2

    :cond_6
    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-static {p3}, Landroid/hardware/biometrics/common/AuthenticateReason;->fingerprintAuthenticateReason(I)Landroid/hardware/biometrics/common/AuthenticateReason;

    move-result-object p4

    iput-object p4, p0, Landroid/hardware/biometrics/common/OperationContext;->authenticateReason:Landroid/hardware/biometrics/common/AuthenticateReason;

    :goto_2
    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iput p3, p0, Landroid/hardware/biometrics/common/OperationContext;->wakeReason:I

    :goto_3
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Authenticate options are invalid."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object p0, p1, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[keyguard session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bp session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAwake: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->isAwake()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHardwareIgnoring: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mIsHardwareIgnoringTouches:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDisplayOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", foldState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mFoldState:I

    const-string/jumbo v1, "]"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
