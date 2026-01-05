.class public Lcom/android/server/biometrics/BiometricService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field mAuthSession:Lcom/android/server/biometrics/AuthSession;

.field public final mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContextProvider;

.field public final mBiometricNotificationLogger:Lcom/android/server/biometrics/BiometricNotificationLogger;

.field mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mEnabledOnKeyguardCallbacks:Ljava/util/List;

.field mGateKeeper:Landroid/service/gatekeeper/IGateKeeperService;

.field public final mHandler:Landroid/os/Handler;

.field final mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

.field public final mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

.field mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mRandom:Ljava/util/Random;

.field public final mRequestCounter:Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;

.field public final mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

.field final mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

.field mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

.field mTrustManager:Landroid/app/trust/ITrustManager;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static -$$Nest$mcreatePreAuthInfo(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;
    .locals 10

    new-instance v5, Landroid/hardware/biometrics/PromptInfo;

    invoke-direct {v5}, Landroid/hardware/biometrics/PromptInfo;-><init>()V

    invoke-virtual {v5, p3}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    move-object v6, p1

    move v4, p2

    invoke-static/range {v0 .. v9}, Lcom/android/server/biometrics/PreAuthInfo;->create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManagerImpl;)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object p0

    return-object p0
.end method

.method public static -$$Nest$mdumpInternal(Lcom/android/server/biometrics/BiometricService;Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Legacy Settings: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-boolean v1, v1, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mUseLegacyFaceOnlySettings:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "Sensors:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CurrentSession: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-string v1, " [ in progress client ]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/BiometricService$Injector;-><init>()V

    sget-object v1, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/biometrics/BiometricService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;Lcom/android/server/biometrics/BiometricHandlerProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;Lcom/android/server/biometrics/BiometricHandlerProvider;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {p3}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    new-instance p2, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$SettingObserver;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Landroid/os/UserManager;

    const-class p2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Landroid/hardware/fingerprint/FingerprintManager;

    const-class p2, Landroid/hardware/face/FaceManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Landroid/hardware/face/FaceManager;

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/BiometricService$SettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;Landroid/os/UserManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;)V

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p2, 0x0

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    new-instance p2, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mRequestCounter:Lcom/android/server/biometrics/BiometricService$Injector$$ExternalSyntheticLambda0;

    invoke-static {v2}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContextProvider;

    const-class p1, Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mUserManager:Landroid/os/UserManager;

    new-instance p1, Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    const-class p2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    const-class p2, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorPrivacyManager;

    invoke-direct {p1, p2}, Lcom/android/server/biometrics/BiometricCameraManagerImpl;-><init>(Landroid/hardware/SensorPrivacyManager;)V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "getGateKeeperService: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BiometricService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mGateKeeper:Landroid/service/gatekeeper/IGateKeeperService;

    new-instance p1, Lcom/android/server/biometrics/BiometricNotificationLogger;

    sget-object p2, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    invoke-direct {p1, p2}, Lcom/android/server/biometrics/BiometricNotificationLogger;-><init>(Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;)V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricNotificationLogger:Lcom/android/server/biometrics/BiometricNotificationLogger;

    const-class p1, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    monitor-enter p1

    :try_start_1
    sget-object p2, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/server/biometrics/SemBiometricSysUiManager;

    sget-object p3, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {p3}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, v2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object p2, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    :goto_1
    monitor-exit p1

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    new-instance p2, Lcom/android/server/biometrics/BiometricService$3;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/BiometricService$3;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    const-class p0, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v0

    const-string p1, "BiometricService"

    const-string p2, "Failed to register user switch observer"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :goto_3
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method


# virtual methods
.method public final authenticateInternal(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/PreAuthInfo;)V
    .locals 24

    move-object/from16 v0, p0

    move-wide/from16 v11, p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating authSession with authRequest: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, p10

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Existing AuthSession: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v1, v3}, Lcom/android/server/biometrics/AuthSession;->onCancelAuthSession(Z)Z

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/biometrics/AuthSession;

    move-object v4, v2

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v5, v4

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    move-object v6, v5

    new-instance v5, Lcom/android/server/biometrics/BiometricService$2;

    invoke-direct {v5, v0, v11, v12}, Lcom/android/server/biometrics/BiometricService$2;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    move-object v7, v6

    iget-object v6, v0, Lcom/android/server/biometrics/BiometricService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    move-object v8, v7

    iget-object v7, v0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    move-object v10, v8

    new-instance v8, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0, v11, v12}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    new-instance v13, Lcom/android/server/biometrics/BiometricService$1;

    invoke-direct {v13, v0, v11, v12}, Lcom/android/server/biometrics/BiometricService$1;-><init>(Lcom/android/server/biometrics/BiometricService;J)V

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string/jumbo v3, "android.hardware.fingerprint"

    invoke-virtual {v15, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v14, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v3

    :goto_0
    move-object/from16 v21, v3

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :goto_1
    sget-object v22, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->sInstance:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    const/16 v20, 0x0

    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContextProvider;

    move/from16 v15, p6

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v23, v10

    move-object/from16 v16, v13

    move-object/from16 v10, p1

    move-wide/from16 v13, p4

    invoke-direct/range {v1 .. v22}, Lcom/android/server/biometrics/AuthSession;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/SemBiometricSysUiWrapper;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStoreAuthorization;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;)V

    iput-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/biometrics/AuthSession;->mUseSwitchingMode:Z

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->goToInitialState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RemoteException"

    move-object/from16 v5, v23

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;
    .locals 2

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz p0, :cond_0

    iget-wide v0, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleAuthenticationSucceeded(JI[BLandroid/os/Bundle;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleAuthenticationSucceeded(), sensorId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object p1

    if-nez p1, :cond_0

    const-string/jumbo p0, "handleAuthenticationSucceeded: AuthSession is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/BiometricSensor;

    iget v2, p2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v2, p3, :cond_1

    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result p0

    const/16 p2, 0xf

    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result p0

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "Unknown sensorId: "

    invoke-static {p3, p0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move p0, v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result p2

    const-string v1, "BiometricService/AuthSession"

    if-eqz p2, :cond_3

    const-string/jumbo p0, "onAuthenticationSucceeded after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iput p3, p1, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    if-eqz p0, :cond_4

    iput-object p4, p1, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    const-string p0, "Dropping authToken for non-strong biometric, id: "

    invoke-static {p3, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    new-instance p0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, ""

    if-eqz p5, :cond_6

    const-string p4, "KEY_IDENTIFIER_NAME"

    invoke-virtual {p5, p4, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->name:Ljava/lang/String;

    const-string p4, "KEY_BIOMETRICS_ID"

    invoke-virtual {p5, p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->id:I

    const-string p4, "KEY_CHALLENGE_TOKEN"

    invoke-virtual {p5, p4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->challengeToken:[B

    iget-object p4, p1, Lcom/android/server/biometrics/AuthSession;->mAuthenticationResults:Landroid/util/SparseArray;

    invoke-virtual {p4, p3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    const/4 p4, 0x6

    :try_start_0
    iget-object p5, p0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->name:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_7

    iget-object p0, p1, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result p5

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    new-instance v3, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p5, p2}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;ILjava/lang/String;)V

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_7
    iget-object p2, p1, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result p5

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    new-instance v3, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v3, p2, p5, p0}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;ILjava/lang/String;)V

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_2
    iget-object p0, p1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    move p5, v0

    :cond_8
    if-ge p5, p2, :cond_9

    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p5, p5, 0x1

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    invoke-virtual {p1, v2}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    :cond_9
    if-nez v0, :cond_a

    const/4 p0, 0x7

    iput p0, p1, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_4

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    iput p4, p1, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string/jumbo p2, "RemoteException"

    invoke-static {v1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iget p0, p1, Lcom/android/server/biometrics/AuthSession;->mState:I

    if-ne p0, p4, :cond_b

    new-instance p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/AuthSession;II)V

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    goto :goto_5

    :cond_b
    new-instance p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;

    const/4 p2, 0x1

    invoke-direct {p0, p3, p2}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    :goto_5
    return-void
.end method

.method public final handleOnDismissed(J[BI)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move/from16 v2, p4

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v0, "onDismissed: "

    const-string v1, ", AuthSession is not current"

    const-string v3, "BiometricService"

    invoke-static {v2, v0, v1, v3}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v4, "Unhandled reason: "

    const-string/jumbo v5, "addAuthToken: "

    const-string/jumbo v6, "bp_auth_result: "

    const-string v7, ", "

    invoke-static {v2, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v3, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    const-string v8, "BMBS"

    invoke-static {v6, v7, v8}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v11, 0x1

    const-string v13, "BiometricService/AuthSession"

    const-string v14, ", SessionId: "

    const-string v15, ", IsCrypto: "

    const-wide/16 p1, 0x0

    const-string v6, ", User: "

    if-ne v2, v11, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    iget-wide v11, v3, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedTimeMs:J

    sub-long v11, v16, v11

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Confirmed! Modality: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    cmp-long v6, v9, p1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", Client: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v6}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", RequireConfirmation: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v6, v6, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", State: 3, Latency: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    iget-object v6, v6, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget v6, v6, Landroid/hardware/biometrics/common/OperationContext;->id:I

    invoke-static {v7, v6, v13}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget-object v7, v3, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v19

    iget-object v9, v3, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v9}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v20, 0x3

    goto :goto_2

    :cond_3
    const/16 v20, 0x2

    :goto_2
    iget-boolean v8, v3, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    iget-object v9, v3, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v9, v9, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    iget v10, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v24, 0x3

    const/high16 v27, -0x40800000    # -1.0f

    move-object/from16 v18, v7

    move/from16 v21, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move-wide/from16 v22, v11

    invoke-static/range {v18 .. v27}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->authenticate(Lcom/android/server/biometrics/log/OperationContextExt;IIZJIZIF)V

    goto/16 :goto_7

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v3, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    sub-long/2addr v9, v11

    const/4 v8, 0x2

    if-eq v2, v8, :cond_7

    const/4 v7, 0x3

    if-eq v2, v7, :cond_6

    const/16 v11, 0x8

    if-eq v2, v11, :cond_5

    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    const/16 v11, 0x16

    goto :goto_3

    :cond_6
    const/16 v11, 0xa

    goto :goto_3

    :cond_7
    const/4 v7, 0x3

    const/16 v11, 0xd

    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v7, "Dismissed! Modality: "

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v3, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    cmp-long v6, v6, p1

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", Action: 2, Client: "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v6}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x3

    goto :goto_5

    :cond_9
    move v6, v8

    :goto_5
    const-string v7, ", Reason: "

    const-string v15, ", Error: "

    invoke-static {v6, v2, v7, v15, v12}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Latency: "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    iget-object v6, v6, Lcom/android/server/biometrics/log/OperationContextExt;->mAidlContext:Landroid/hardware/biometrics/common/OperationContext;

    iget v6, v6, Landroid/hardware/biometrics/common/OperationContext;->id:I

    invoke-static {v12, v6, v13}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz v11, :cond_b

    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    iget-object v7, v3, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->statsModality()I

    move-result v20

    iget-object v12, v3, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v12}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v22, 0x3

    goto :goto_6

    :cond_a
    move/from16 v22, v8

    :goto_6
    iget-boolean v8, v3, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    iget v12, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v21, 0x2

    const/16 v27, 0x0

    move-object/from16 v19, v7

    move/from16 v23, v8

    move-wide/from16 v24, v9

    move/from16 v26, v11

    move/from16 v28, v12

    invoke-static/range {v19 .. v28}, Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;->error(Lcom/android/server/biometrics/log/OperationContextExt;IIIZJIII)V

    :cond_b
    :goto_7
    packed-switch v2, :pswitch_data_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    const/4 v4, 0x0

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    const/4 v4, 0x0

    goto/16 :goto_12

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    goto/16 :goto_f

    :pswitch_0
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v2, v3, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v2}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    move-result v2

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-interface {v0, v2, v7, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_8

    :pswitch_1
    if-eqz v0, :cond_c

    iget-object v4, v3, Lcom/android/server/biometrics/AuthSession;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    invoke-virtual {v4, v0}, Landroid/security/KeyStoreAuthorization;->addAuthToken([B)I

    :goto_9
    :pswitch_2
    const/4 v4, 0x0

    goto :goto_a

    :cond_c
    const-string/jumbo v0, "credentialAttestation is null"

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :pswitch_3
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v2, v3, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v2}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    move-result v2

    iget v4, v3, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    iget v5, v3, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    invoke-interface {v0, v2, v4, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_8

    :pswitch_4
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v2, v3, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v2}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const/16 v5, 0xa

    :try_start_1
    invoke-interface {v0, v2, v5, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    goto :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_12

    :catch_1
    move-exception v0

    goto/16 :goto_f

    :pswitch_5
    const/4 v4, 0x0

    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    goto :goto_c

    :goto_a
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz v0, :cond_d

    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    invoke-virtual {v6, v0}, Landroid/security/KeyStoreAuthorization;->addAuthToken([B)I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_d
    const-string/jumbo v0, "mTokenEscrow is null"

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v5, v3, Lcom/android/server/biometrics/AuthSession;->mCurrentSensor:Lcom/android/server/biometrics/BiometricSensor;

    if-eqz v5, :cond_e

    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mAuthenticationResults:Landroid/util/SparseArray;

    iget v5, v5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v6, v5, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;

    :cond_e
    iget-object v5, v3, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    move-result v2

    iget v6, v0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->id:I

    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession$AuthenticationResult;->challengeToken:[B

    invoke-interface {v5, v2, v6, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSemAuthenticationSucceeded(II[B)V

    goto :goto_c

    :cond_f
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-static {v2}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_c
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz v0, :cond_11

    iget-object v2, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-eqz v2, :cond_11

    array-length v0, v0

    new-array v10, v0, [B

    move v8, v4

    :goto_d
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    array-length v2, v0

    if-ge v8, v2, :cond_10

    aget-byte v0, v0, v8

    aput-byte v0, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_10
    iget-object v5, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, v3, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    iget v9, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    :cond_11
    :goto_e
    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    goto :goto_11

    :goto_f
    :try_start_2
    const-string/jumbo v2, "Remote exception"

    invoke-static {v13, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz v0, :cond_11

    iget-object v2, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-eqz v2, :cond_11

    array-length v0, v0

    new-array v10, v0, [B

    move v8, v4

    :goto_10
    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    array-length v2, v0

    if-ge v8, v2, :cond_12

    aget-byte v0, v0, v8

    aput-byte v0, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_12
    iget-object v5, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v0, v3, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, v3, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    iget v9, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    goto :goto_e

    :goto_11
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthSession;->destroy()V

    :cond_13
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    return-void

    :goto_12
    iget-object v1, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    if-eqz v1, :cond_15

    iget-object v2, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-eqz v2, :cond_15

    array-length v1, v1

    new-array v10, v1, [B

    move v8, v4

    :goto_13
    iget-object v1, v3, Lcom/android/server/biometrics/AuthSession;->mTokenEscrow:[B

    array-length v2, v1

    if-ge v8, v2, :cond_14

    aget-byte v1, v1, v8

    aput-byte v1, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_14
    iget-object v5, v3, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    iget-object v6, v3, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v1, v3, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    iget v8, v3, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    iget v9, v3, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    :cond_15
    invoke-virtual {v3}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public final onBootPhase(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->getInstance()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBioAnalyticsManager;Ljava/lang/Object;I)V

    iget-object p0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager;->mH:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    sget-object v3, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/log/BiometricContextProvider;Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;)V

    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    const-string/jumbo v1, "biometric"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v0, Lcom/android/server/biometrics/BiometricStrengthController;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricStrengthController;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricStrengthController;->mDeviceConfigListener:Lcom/android/server/biometrics/BiometricStrengthController$$ExternalSyntheticLambda0;

    const-string/jumbo v2, "biometrics"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    new-instance v0, Lcom/android/server/biometrics/BiometricService$4;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$4;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_DRM_PROPERTY_FOR_BRIGHTNESS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayBrightnessListener(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;)F

    :cond_1
    return-void
.end method
