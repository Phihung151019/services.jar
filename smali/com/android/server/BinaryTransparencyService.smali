.class public Lcom/android/server/BinaryTransparencyService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final BINARY_HASH_ERROR:Ljava/lang/String; = "SHA256HashError"

.field static final KEY_ENABLE_BIOMETRIC_PROPERTY_VERIFICATION:Ljava/lang/String; = "enable_biometric_property_verification"

.field static final SYSPROP_NAME_VBETA_DIGEST:Ljava/lang/String; = "ro.boot.vbmeta.digest"

.field static final VBMETA_DIGEST_UNAVAILABLE:Ljava/lang/String; = "vbmeta-digest-unavailable"

.field static final VBMETA_DIGEST_UNINITIALIZED:Ljava/lang/String; = "vbmeta-digest-uninitialized"

.field public static final digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field public final mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

.field public final mContext:Landroid/content/Context;

.field public mMeasurementsLastRecordedMs:J

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

.field public mVbmetaDigest:Ljava/lang/String;


# direct methods
.method public static -$$Nest$mgetCurrentInstalledApexs(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v1, "TransparencyService"

    if-nez p0, :cond_0

    const-string p0, "Error obtaining an instance of PackageManager."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-wide/32 v2, 0x48000000

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Error obtaining installed packages (including APEX)"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static -$$Nest$mgetNewlyInstalledMbas(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;
    .locals 5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "background_install_control"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IBackgroundInstallControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IBackgroundInstallControlService;

    move-result-object v0

    const-string/jumbo v1, "TransparencyService"

    if-nez v0, :cond_0

    const-string v0, "Failed to obtain an IBinder instance of IBackgroundInstallControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const-wide/32 v2, 0x8020000

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v2, v3, v4}, Landroid/content/pm/IBackgroundInstallControlService;->getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    const-string v2, "Failed to get a list of MBAs."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public static -$$Nest$mlogBiometricProperties(Lcom/android/server/BinaryTransparencyService;Landroid/hardware/biometrics/SensorProperties;II)V
    .locals 10

    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getSensorId()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getComponentInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getComponentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x24b

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v2

    move p3, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static -$$Nest$mtranslateContentDigestAlgorithmIdToString(Lcom/android/server/BinaryTransparencyService;I)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string/jumbo p0, "UNKNOWN_ALGO_ID("

    const-string v0, ")"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "SHA256"

    return-object p0

    :cond_1
    const-string/jumbo p0, "VERITY_CHUNKED_SHA256"

    return-object p0

    :cond_2
    const-string p0, "CHUNKED_SHA512"

    return-object p0

    :cond_3
    const-string p0, "CHUNKED_SHA256"

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    const/4 v2, 0x0

    const/high16 v3, 0x43fa0000    # 500.0f

    const/16 v4, 0x32

    invoke-direct {v1, v4, v2, v3}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string/jumbo v2, "binary_transparency.value_digest_all_packages_latency_uniform"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/BinaryTransparencyService;->digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/server/BinaryTransparencyService$BiometricLogger;->sInstance:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    invoke-direct {p0, p1, v0}, Lcom/android/server/BinaryTransparencyService;-><init>(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService$BiometricLogger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService$BiometricLogger;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-direct {p1, p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    const-string/jumbo p1, "vbmeta-digest-uninitialized"

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object p2, p0, Lcom/android/server/BinaryTransparencyService;->mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    return-void
.end method


# virtual methods
.method public collectBiometricProperties()V
    .locals 4

    const/4 v0, 0x1

    const-string/jumbo v1, "biometrics"

    const-string/jumbo v2, "enable_biometric_property_verification"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "android.hardware.fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_2

    const-string/jumbo v3, "android.hardware.biometrics.face"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/face/FaceManager;

    :cond_2
    if-eqz v2, :cond_3

    new-instance v0, Lcom/android/server/BinaryTransparencyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/BinaryTransparencyService$1;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-virtual {v2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    :cond_3
    if-eqz v1, :cond_4

    new-instance v0, Lcom/android/server/BinaryTransparencyService$2;

    invoke-direct {v0, p0}, Lcom/android/server/BinaryTransparencyService$2;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-virtual {v1, v0}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    const-string/jumbo p1, "TransparencyService"

    const-string v0, "Boot completed. Getting boot integrity data."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.boot.vbmeta.digest"

    const-string/jumbo v1, "vbmeta-digest-unavailable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    const-string/jumbo v1, "VBMeta Digest: "

    invoke-static {v1, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1a4

    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/IoThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    check-cast v0, Landroid/os/HandlerExecutor;

    invoke-virtual {v0, v1}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    const-string v0, "Boot completed. Collecting biometric system properties."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->collectBiometricProperties()V

    const-string/jumbo v0, "Scheduling measurements to be taken."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->scheduleBinaryMeasurements(Landroid/content/Context;)V

    const-string/jumbo v0, "Registering APK & Non-Staged APEX updates..."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v0, "Registering APEX updates..."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "package_native"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManagerNative$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManagerNative;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "IPackageManagerNative is null"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/server/BinaryTransparencyService$3;

    invoke-direct {v1, p0}, Lcom/android/server/BinaryTransparencyService$3;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManagerNative;->registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Failed to register a StagedApexObserver."

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 3

    const-string/jumbo v0, "TransparencyService"

    :try_start_0
    const-string/jumbo v1, "transparency"

    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo p0, "Started BinaryTransparencyService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v1, "Failed to start BinaryTransparencyService."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
