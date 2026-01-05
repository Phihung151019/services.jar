.class public Lcom/android/server/biometrics/AuthService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field final mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

.field public final mInjector:Lcom/android/server/biometrics/AuthService$Injector;


# direct methods
.method public static -$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string/jumbo v1, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static -$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "android.permission.USE_BIOMETRIC"

    const-string/jumbo v1, "Must have USE_BIOMETRIC permission"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/biometrics/AuthService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/AuthService$Injector;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    new-instance p1, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;-><init>(Lcom/android/server/biometrics/AuthService;)V

    iput-object p1, p0, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    return-void
.end method


# virtual methods
.method public final generateRSdkCompatibleConfiguration()[Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "android.hardware.fingerprint"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v1, "android.hardware.biometrics.face"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 p0, 0xfff

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v5, v7, v3

    const/4 v5, 0x1

    aput-object v6, v7, v5

    aput-object p0, v7, v2

    const-string v5, ":"

    invoke-static {v5, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Generated config_biometric_sensors: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AuthService"

    invoke-static {p0, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final onStart()V
    .locals 25

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/biometrics/AuthService$Injector;->isHidlDisabled(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "Found R vendor partition without config_biometric_sensors"

    const-string v4, "AuthService"

    const/16 v5, 0x1e

    const-string/jumbo v6, "ro.board.api_level"

    const-string/jumbo v7, "ro.board.first_api_level"

    const/4 v8, 0x0

    if-nez v0, :cond_1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/server/biometrics/AuthService$Injector;->getConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    if-nez v10, :cond_0

    if-ne v0, v5, :cond_0

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthService;->generateRSdkCompatibleConfiguration()[Ljava/lang/String;

    move-result-object v9

    :cond_0
    array-length v0, v9

    new-array v0, v0, [Lcom/android/server/biometrics/SensorConfig;

    move v10, v8

    :goto_0
    array-length v11, v9

    if-ge v10, v11, :cond_1

    new-instance v11, Lcom/android/server/biometrics/SensorConfig;

    aget-object v12, v9, v10

    invoke-direct {v11, v12}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    aput-object v11, v0, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    sget-object v9, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintAidlInstances()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v16

    if-eqz v0, :cond_5

    array-length v10, v0

    if-nez v10, :cond_2

    goto :goto_3

    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    array-length v11, v0

    move v13, v8

    :goto_1
    if-ge v13, v11, :cond_4

    aget-object v14, v0, v13

    if-eqz v14, :cond_3

    const-string v5, ":2:"

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0x1e

    goto :goto_1

    :cond_4
    new-array v0, v8, [Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_2
    move-object v13, v0

    goto :goto_4

    :cond_5
    :goto_3
    new-array v0, v8, [Ljava/lang/String;

    goto :goto_2

    :goto_4
    if-eqz v12, :cond_6

    array-length v0, v12

    if-lez v0, :cond_6

    const/4 v11, 0x1

    goto :goto_5

    :cond_6
    move v11, v8

    :goto_5
    array-length v0, v13

    if-lez v0, :cond_7

    const/4 v14, 0x1

    goto :goto_6

    :cond_7
    move v14, v8

    :goto_6
    if-nez v14, :cond_8

    if-nez v11, :cond_8

    const-string/jumbo v0, "No fingerprint sensors."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    invoke-virtual {v9}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFingerprintHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v10, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;

    invoke-direct/range {v10 .. v16}, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda1;-><init>(Z[Ljava/lang/String;[Ljava/lang/String;ZLandroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_7
    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceAidlInstances()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    move-result-object v13

    if-eqz v11, :cond_9

    array-length v0, v11

    if-nez v0, :cond_b

    :cond_9
    if-eqz v10, :cond_a

    array-length v0, v10

    if-nez v0, :cond_b

    :cond_a
    const/16 v16, 0x1

    const/16 v17, 0x2

    goto :goto_a

    :cond_b
    if-eqz v11, :cond_c

    array-length v0, v11

    if-lez v0, :cond_c

    array-length v15, v11

    move v5, v8

    const/16 v16, 0x1

    :goto_8
    const/16 v17, 0x2

    if-ge v5, v15, :cond_d

    aget-object v14, v11, v5

    :try_start_0
    const-string v0, ":"

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v18, v0, v8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    aget-object v18, v0, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    aget-object v0, v0, v17

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v19, v5

    goto :goto_9

    :catch_0
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    move/from16 v19, v5

    const-string v5, "Error parsing configString: "

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    add-int/lit8 v5, v19, 0x1

    const/4 v8, 0x0

    goto :goto_8

    :cond_c
    const/16 v16, 0x1

    const/16 v17, 0x2

    :cond_d
    invoke-virtual {v9}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getFaceHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;

    invoke-direct {v5, v10, v11, v12, v13}, Lcom/android/server/biometrics/AuthService$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;Landroid/hardware/face/IFaceService;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    :goto_a
    const-string/jumbo v0, "No face sensors."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/biometrics/AuthService$Injector;->getIrisConfiguration(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/biometrics/AuthService$Injector;->isHidlDisabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x0

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    array-length v7, v0

    if-nez v7, :cond_e

    const/16 v7, 0x1e

    if-ne v6, v7, :cond_e

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthService;->generateRSdkCompatibleConfiguration()[Ljava/lang/String;

    move-result-object v0

    :cond_e
    array-length v3, v0

    new-array v3, v3, [Lcom/android/server/biometrics/SensorConfig;

    move v6, v5

    :goto_c
    array-length v7, v0

    if-ge v6, v7, :cond_10

    new-instance v7, Lcom/android/server/biometrics/SensorConfig;

    aget-object v8, v0, v6

    invoke-direct {v7, v8}, Lcom/android/server/biometrics/SensorConfig;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_f
    const/4 v5, 0x0

    const/4 v3, 0x0

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_15

    array-length v6, v3

    move v7, v5

    :goto_d
    if-ge v7, v6, :cond_15

    aget-object v8, v3, v7

    iget v9, v8, Lcom/android/server/biometrics/SensorConfig;->modality:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_11

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Unknown modality: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v8, Lcom/android/server/biometrics/SensorConfig;->modality:I

    invoke-static {v9, v8, v4}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_f

    :cond_11
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Landroid/hardware/biometrics/SensorPropertiesInternal;

    const/16 v9, 0xf

    iget v10, v8, Lcom/android/server/biometrics/SensorConfig;->strength:I

    if-eq v10, v9, :cond_14

    const/16 v9, 0xff

    if-eq v10, v9, :cond_13

    const/16 v9, 0xfff

    if-eq v10, v9, :cond_12

    const-string/jumbo v9, "authenticatorStrengthToPropertyStrength: Unknown strength "

    const-string v11, "BiometricUtils"

    invoke-static {v10, v9, v11}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_12
    move/from16 v20, v5

    goto :goto_e

    :cond_13
    move/from16 v20, v16

    goto :goto_e

    :cond_14
    move/from16 v20, v17

    :goto_e
    iget v8, v8, Lcom/android/server/biometrics/SensorConfig;->id:I

    const/16 v23, 0x0

    const/16 v21, 0x1

    const/16 v24, 0x0

    move/from16 v19, v8

    invoke-direct/range {v18 .. v24}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(IIILjava/util/List;ZZ)V

    move-object/from16 v8, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_15
    invoke-virtual {v2}, Lcom/android/server/biometrics/AuthService$Injector;->getIrisService()Landroid/hardware/iris/IIrisService;

    move-result-object v3

    if-eqz v3, :cond_16

    :try_start_1
    invoke-interface {v3, v0}, Landroid/hardware/iris/IIrisService;->registerAuthenticators(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    :catch_1
    move-exception v0

    const-string/jumbo v3, "RemoteException when registering iris authenticators"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :cond_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    const-string v0, "HIDL iris configuration exists, but IrisService is null."

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_10
    iget-object v0, v1, Lcom/android/server/biometrics/AuthService;->mImpl:Landroid/hardware/biometrics/IAuthService$Stub;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/biometrics/AuthService$Injector;->publishBinderService(Lcom/android/server/biometrics/AuthService;Landroid/hardware/biometrics/IAuthService$Stub;)V

    return-void
.end method
