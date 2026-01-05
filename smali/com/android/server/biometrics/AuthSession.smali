.class public final Lcom/android/server/biometrics/AuthSession;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mAuthenticatedSensorId:I

.field public mAuthenticatedTimeMs:J

.field public final mAuthenticationResults:Landroid/util/SparseArray;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field final mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public mCancelled:Z

.field public final mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

.field public final mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSensor:Lcom/android/server/biometrics/BiometricSensor;

.field public final mDebugEnabled:Z

.field public mErrorEscrow:I

.field public final mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mOpPackageName:Ljava/lang/String;

.field public final mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

.field public final mOperationId:J

.field public final mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

.field final mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public final mRandom:Ljava/util/Random;

.field public final mRequestId:J

.field final mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

.field public mSensors:[I

.field public final mSfpsSensorIds:Ljava/util/List;

.field public mStartTimeMs:J

.field public mState:I

.field public final mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

.field final mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

.field final mToken:Landroid/os/IBinder;

.field public mTokenEscrow:[B

.field public mUseSwitchingMode:Z

.field public final mUserId:I

.field public mVendorCodeEscrow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/SemBiometricSysUiWrapper;Landroid/hardware/biometrics/IBiometricSysuiReceiver;Landroid/security/KeyStoreAuthorization;Ljava/util/Random;Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;Lcom/android/server/biometrics/PreAuthInfo;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricSensorReceiver;Landroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;ZLjava/util/List;Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Lcom/android/server/biometrics/SemBiometricSysUiWrapper;",
            "Landroid/hardware/biometrics/IBiometricSysuiReceiver;",
            "Landroid/security/KeyStoreAuthorization;",
            "Ljava/util/Random;",
            "Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;",
            "Lcom/android/server/biometrics/PreAuthInfo;",
            "Landroid/os/IBinder;",
            "JJI",
            "Landroid/hardware/biometrics/IBiometricSensorReceiver;",
            "Landroid/hardware/biometrics/IBiometricServiceReceiver;",
            "Ljava/lang/String;",
            "Landroid/hardware/biometrics/PromptInfo;",
            "Z",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;",
            "Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    move-wide/from16 v3, p10

    move-object/from16 v5, p17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v7, -0x1

    iput v7, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    iput-boolean v6, p0, Lcom/android/server/biometrics/AuthSession;->mUseSwitchingMode:Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Creating AuthSession with: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BiometricService/AuthSession"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mContext:Landroid/content/Context;

    move-object/from16 v7, p2

    iput-object v7, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v7, p3

    iput-object v7, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    iput-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mSysuiReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    move-object/from16 v7, p5

    iput-object v7, p0, Lcom/android/server/biometrics/AuthSession;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    move-object/from16 v7, p6

    iput-object v7, p0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    move-object/from16 v7, p7

    iput-object v7, p0, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    iput-object v2, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    move-object/from16 v7, p9

    iput-object v7, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iput-wide v3, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    move-wide/from16 v9, p12

    iput-wide v9, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    move/from16 v9, p14

    iput v9, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    move-object/from16 v9, p15

    iput-object v9, p0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    move-object/from16 v9, p16

    iput-object v9, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iput-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    move-object/from16 v10, p18

    iput-object v10, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    move/from16 v10, p19

    iput-boolean v10, p0, Lcom/android/server/biometrics/AuthSession;->mDebugEnabled:Z

    iput-boolean v6, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    move-object/from16 v10, p21

    iput-object v10, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricFrameworkStatsLogger:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    new-instance v10, Lcom/android/server/biometrics/log/OperationContextExt;

    iget-boolean v2, v2, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    new-instance v11, Landroid/hardware/biometrics/common/OperationContext;

    invoke-direct {v11}, Landroid/hardware/biometrics/common/OperationContext;-><init>()V

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12, v6, v2}, Lcom/android/server/biometrics/log/OperationContextExt;-><init>(Landroid/hardware/biometrics/common/OperationContext;ZIZ)V

    iput-object v10, p0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    const-class v2, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    iput-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-interface/range {p20 .. p20}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    const/4 v10, 0x0

    invoke-direct {v2, v10}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mSfpsSensorIds:Ljava/util/List;

    :try_start_0
    invoke-interface {v9}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v0, "Unable to link to death"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v9, v6

    :goto_1
    if-ge v9, v2, :cond_0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/biometrics/BiometricSensor;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "set to unknown state sensor: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v10, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-static {v11, v13, v8}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput v6, v10, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    iput v6, v10, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v12}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticationResults:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v1, Lcom/android/server/biometrics/BiometricService$2;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lcom/android/server/biometrics/BiometricService$2;

    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService$2;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;

    iget-object v7, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {v7, v0, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v7, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v7, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    long-to-int v0, v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    invoke-direct {v1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    const-string v2, "AP"

    iput-object v2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    iput-object v5, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, v6}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public allCookiesReceived()Z
    .locals 7

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/biometrics/BiometricSensor;

    iget v6, v5, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    if-ne v6, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Sensor ID: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Waiting for cookie: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BiometricService/PreAuthInfo"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "Remaining cookies: "

    const-string v0, "BiometricService/AuthSession"

    invoke-static {v2, p0, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    return v4

    :cond_2
    return v1
.end method

.method public final binderDied()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Binder died, session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mClientDeathReceiver:Lcom/android/server/biometrics/AuthSession$ClientDeathReceiver;

    check-cast p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;

    iget-wide v2, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda3;->f$1:J

    const/4 p0, 0x0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda4;-><init>(IJLjava/lang/Object;)V

    iget-object p0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final cancelAllSensors()V
    .locals 2

    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    return-void
.end method

.method public final cancelAllSensors(Ljava/util/function/Function;)V
    .locals 11

    const-string v0, "BiometricService/AuthSession"

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    :try_start_0
    invoke-interface {p1, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cancelling sensorId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v7, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget v9, v4, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    iget-object v9, v4, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v9, v5, v6, v7, v8}, Landroid/hardware/biometrics/IBiometricAuthenticator;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput v10, v4, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v4, "Unable to cancel authentication"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final destroy()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    iget-wide v1, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget-object v3, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mShowDialogWatchdog:Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;

    iget-object v4, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "closeSession: no session info with "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SemBiometricSysUiWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide/16 v2, 0x3e8

    iget-object v0, v0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(IJ)V

    :goto_0
    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    long-to-int v1, v1

    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    iget-object v2, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    const-string v3, "E"

    iput-object v3, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    iput p0, v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    monitor-enter v0

    :try_start_0
    iget-object p0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v2, 0x14

    if-le p0, v2, :cond_1

    iget-object p0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->delete(I)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public final goToInitialState()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v1, v0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    new-array v5, v2, [I

    iput-object v5, p0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v3, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    iget-object v4, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget v8, v0, Lcom/android/server/biometrics/PreAuthInfo;->callingUserId:I

    iget-wide v9, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v11, p0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v12, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;[IZZIJLjava/lang/String;J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/biometrics/AuthSession;->mUseSwitchingMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :cond_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    iget v5, v4, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    :goto_0
    invoke-virtual {p0, v4, v2}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Lcom/android/server/biometrics/BiometricSensor;Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/AuthSession;->setSensorsToStateWaitingForCookie(Z)V

    :goto_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "No authenticators requested"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasAuthenticatedAndConfirmed()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget p0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_3

    return v1

    :cond_3
    :goto_2
    return v2
.end method

.method public final isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z
    .locals 5

    move-object v0, p1

    check-cast v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;

    iget v0, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    check-cast p1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;

    iget-object v4, p1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;->this$1:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    if-eq p1, v1, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move p1, v3

    goto :goto_1

    :cond_1
    iget-object p1, v4, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v4, Lcom/android/server/biometrics/BiometricService$SettingObserver;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Landroid/net/Uri;

    invoke-virtual {v4, v2, p1, v0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->onChange(ZLandroid/net/Uri;I)V

    :cond_2
    iget-object p1, v4, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceAlwaysRequireConfirmation:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1
    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    if-eqz p0, :cond_4

    :cond_3
    return v2

    :cond_4
    return v3
.end method

.method public final onCancelAuthSession(Z)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v0

    const-string v1, "BiometricService/AuthSession"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo p0, "onCancelAuthSession after successful auth"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    iget v0, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors()V

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    return v3

    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    move-result v0

    const/4 v4, 0x5

    invoke-interface {p1, v0, v4, v3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    iget-object p1, p0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    iget-wide v4, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {p1, v4, v5}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->hideAuthenticationDialog(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    const-string/jumbo p1, "Remote exception"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public final onErrorReceived(IIII)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const-string/jumbo v5, "onErrorReceived sensor: "

    const-string v6, " error: "

    const-string v7, "BiometricService/AuthSession"

    invoke-static {v1, v3, v5, v6, v7}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v5, v5, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    move v9, v8

    :cond_0
    const/4 v10, 0x1

    if-ge v9, v6, :cond_1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Lcom/android/server/biometrics/BiometricSensor;

    iget v11, v11, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    if-ne v11, v2, :cond_0

    move v5, v10

    goto :goto_0

    :cond_1
    move v5, v8

    :goto_0
    if-nez v5, :cond_2

    const-string/jumbo v0, "Unknown/expired cookie: "

    invoke-static {v2, v0, v7}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_2
    iget-object v5, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v5, v5, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v9, v8

    :goto_1
    const/4 v11, 0x5

    const/4 v12, 0x3

    if-ge v9, v6, :cond_4

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v9, v9, 0x1

    check-cast v13, Lcom/android/server/biometrics/BiometricSensor;

    iget v14, v13, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    if-ne v14, v12, :cond_3

    iget v12, v13, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    if-ne v2, v12, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Sensor("

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v13, Lcom/android/server/biometrics/BiometricSensor;->id:I

    const-string v15, ") now in STATE_STOPPED"

    move/from16 v16, v8

    const-string v8, "BiometricService/Sensor"

    invoke-static {v14, v15, v8, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iput v11, v13, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    goto :goto_2

    :cond_3
    move/from16 v16, v8

    :goto_2
    move/from16 v8, v16

    goto :goto_1

    :cond_4
    move/from16 v16, v8

    iget v2, v0, Lcom/android/server/biometrics/AuthSession;->mAuthenticatedSensorId:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    const-string/jumbo v0, "onErrorReceived after successful auth (ignoring)"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_5
    const/4 v2, 0x7

    const/16 v5, 0x9

    if-eq v3, v2, :cond_7

    if-ne v3, v5, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v2, v16

    goto :goto_4

    :cond_7
    :goto_3
    move v2, v10

    :goto_4
    if-eqz v2, :cond_8

    new-instance v6, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;

    const/4 v8, 0x0

    invoke-direct {v6, v0, v1, v8}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/AuthSession;II)V

    invoke-virtual {v0, v6}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    :cond_8
    iput v3, v0, Lcom/android/server/biometrics/AuthSession;->mErrorEscrow:I

    iput v4, v0, Lcom/android/server/biometrics/AuthSession;->mVendorCodeEscrow:I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onErrorReceived: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-static {v6, v8, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v6, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    const v8, 0x8000

    if-eq v6, v10, :cond_f

    const/4 v9, 0x2

    if-eq v6, v9, :cond_c

    if-eq v6, v12, :cond_c

    const/4 v9, 0x4

    if-eq v6, v9, :cond_b

    const/4 v9, 0x6

    if-eq v6, v9, :cond_c

    if-eq v6, v5, :cond_a

    const/16 v1, 0xa

    if-eq v6, v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled error state, mState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-static {v1, v0, v7}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v16

    :cond_9
    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    iget-wide v2, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->hideAuthenticationDialog(J)V

    return v10

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Biometric canceled, ignoring from state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-static {v1, v0, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v16

    :cond_b
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2, v1, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    iget-wide v2, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->hideAuthenticationDialog(J)V

    return v10

    :cond_c
    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v6}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v6

    and-int/2addr v6, v8

    if-eqz v6, :cond_d

    if-eqz v2, :cond_d

    iput v5, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->onBiometricError(III)V

    return v16

    :cond_d
    if-ne v3, v11, :cond_e

    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    iget-wide v5, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v2, v5, v6}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->hideAuthenticationDialog(J)V

    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, v1, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    return v10

    :cond_e
    const/16 v2, 0x8

    iput v2, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->onBiometricError(III)V

    return v16

    :cond_f
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v2

    and-int/2addr v2, v8

    if-eqz v2, :cond_10

    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v1}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v1

    and-int/lit16 v1, v1, -0x8000

    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2, v1}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    iput v5, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    move/from16 v1, v16

    new-array v4, v1, [I

    iput-object v4, v0, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    iget-object v3, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget v7, v1, Lcom/android/server/biometrics/PreAuthInfo;->callingUserId:I

    iget-wide v8, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v11, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;[IZZIJLjava/lang/String;J)V

    const/16 v16, 0x0

    return v16

    :cond_10
    iget-object v0, v0, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, v1, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    return v10
.end method

.method public final pauseSensorIfSupported(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    iget v5, v4, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, v5, :cond_0

    iget v0, v4, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Unknown sensor: "

    const-string v1, "BiometricService/AuthSession"

    invoke-static {p1, v0, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_0
    const/4 v1, 0x4

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/AuthSession;->cancelAllSensors(Ljava/util/function/Function;)V

    return v3

    :cond_3
    return v2
.end method

.method public final sensorIdToModality(I)I
    .locals 2

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne p1, v1, :cond_0

    iget p0, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    return p0

    :cond_1
    const-string/jumbo p0, "Unknown sensor: "

    const-string v0, "BiometricService/AuthSession"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setSensorsToStateWaitingForCookie(Lcom/android/server/biometrics/BiometricSensor;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    const/4 v3, 0x5

    if-eqz p2, :cond_0

    if-eq v2, v3, :cond_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Skip retry because sensor: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService/AuthSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iput v3, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    :cond_1
    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    const v3, 0x7ffffffe

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v14, v2, 0x1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v5

    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-wide v7, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget v9, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v10, v0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    iget-object v11, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v15

    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    move-result v16

    iget-object v2, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    iget-boolean v2, v2, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    iput v14, v1, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    iget-object v4, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    move/from16 v17, v2

    invoke-interface/range {v4 .. v17}, Landroid/hardware/biometrics/IBiometricAuthenticator;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V

    iput v3, v1, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    iput-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mCurrentSensor:Lcom/android/server/biometrics/BiometricSensor;

    return-void
.end method

.method public final setSensorsToStateWaitingForCookie(Z)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v1, v1, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    iget v5, v4, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    const-string v6, "BiometricService/AuthSession"

    const/4 v7, 0x5

    iget v8, v4, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-eqz p1, :cond_0

    if-eq v5, v7, :cond_0

    const/4 v9, 0x4

    if-eq v5, v9, :cond_0

    const-string/jumbo v4, "Skip retry because sensor: "

    const-string v7, " is: "

    invoke-static {v8, v5, v4, v7, v6}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iput v7, v0, Lcom/android/server/biometrics/AuthSession;->mState:I

    :cond_1
    iget-object v5, v0, Lcom/android/server/biometrics/AuthSession;->mRandom:Ljava/util/Random;

    const v7, 0x7ffffffe

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v10

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "waiting for cooking for sensor: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v0, Lcom/android/server/biometrics/AuthSession;->mToken:Landroid/os/IBinder;

    iget-wide v12, v0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget v14, v0, Lcom/android/server/biometrics/AuthSession;->mUserId:I

    iget-object v15, v0, Lcom/android/server/biometrics/AuthSession;->mSensorReceiver:Landroid/hardware/biometrics/IBiometricSensorReceiver;

    iget-object v6, v0, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v8, v0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    iget-object v7, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->isAllowBackgroundAuthentication()Z

    move-result v20

    iget-object v7, v0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->isForLegacyFingerprintManager()Z

    move-result v21

    iget-object v7, v0, Lcom/android/server/biometrics/AuthSession;->mOperationContext:Lcom/android/server/biometrics/log/OperationContextExt;

    iget-boolean v7, v7, Lcom/android/server/biometrics/log/OperationContextExt;->mIsMandatoryBiometrics:Z

    iput v5, v4, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    move-wide/from16 v17, v8

    iget-object v9, v4, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    move/from16 v19, v5

    move-object/from16 v16, v6

    move/from16 v22, v7

    invoke-interface/range {v9 .. v22}, Landroid/hardware/biometrics/IBiometricAuthenticator;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZZZ)V

    const/4 v5, 0x1

    iput v5, v4, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final startAllPreparedSensors(Ljava/util/function/Function;)V
    .locals 7

    const-string v0, "BiometricService/AuthSession"

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting sensor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v3, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v5, v4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->startPreparedClient(I)V

    const/4 v4, 0x3

    iput v4, v3, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unable to start prepared client, sensor: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final statsModality()I
    .locals 3

    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    iget v1, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "State: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/biometrics/AuthSession;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCrypto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PreAuthInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
