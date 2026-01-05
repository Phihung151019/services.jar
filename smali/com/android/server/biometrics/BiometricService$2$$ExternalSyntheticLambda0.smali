.class public final synthetic Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$1;JI)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$2;JI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;JI)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$1:J

    iput p4, p0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/BiometricService$1;

    iget-wide v2, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$1:J

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$2:I

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "handleAuthenticationRejected()"

    const-string v5, "BiometricService"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "handleAuthenticationRejected: AuthSession is not current"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v2

    const-string v3, "BiometricService/AuthSession"

    if-eqz v2, :cond_1

    const-string/jumbo v0, "onAuthenticationRejected after successful auth"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :try_start_0
    iget-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/AuthSession;->sensorIdToModality(I)I

    move-result v4

    const/16 v5, 0x64

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->onBiometricError(III)V

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/AuthSession;->pauseSensorIfSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string/jumbo v1, "RemoteException"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    iget-wide v2, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$1:J

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$2:I

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v0, "BiometricService"

    const-string/jumbo v1, "handleOnReadyForAuthentication: AuthSession is not current"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_3
    iget-boolean v2, v1, Lcom/android/server/biometrics/AuthSession;->mCancelled:Z

    const-string v3, "BiometricService/AuthSession"

    if-eqz v2, :cond_4

    const-string/jumbo v1, "Received cookie but already cancelled (ignoring): "

    invoke-static {v0, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v0, "onCookieReceived after successful auth"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_5
    if-nez v0, :cond_6

    goto/16 :goto_8

    :cond_6
    iget-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v2, v2, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :cond_7
    :goto_3
    const/4 v7, 0x2

    if-ge v6, v4, :cond_8

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Lcom/android/server/biometrics/BiometricSensor;

    iget v9, v8, Lcom/android/server/biometrics/BiometricSensor;->mCookie:I

    if-ne v0, v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Sensor("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v8, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") matched cookie: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "BiometricService/Sensor"

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v8, Lcom/android/server/biometrics/BiometricSensor;->mSensorState:I

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->allCookiesReceived()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/biometrics/AuthSession;->mStartTimeMs:J

    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    iget v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_d

    :try_start_1
    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v5

    :cond_9
    const/4 v6, 0x1

    if-ge v4, v2, :cond_a

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    check-cast v8, Lcom/android/server/biometrics/BiometricSensor;

    invoke-virtual {v1, v8}, Lcom/android/server/biometrics/AuthSession;->isConfirmationRequired(Lcom/android/server/biometrics/BiometricSensor;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v12, v6

    goto :goto_4

    :cond_a
    move v12, v5

    :goto_4
    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v0, v0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    move v0, v5

    :goto_5
    iget-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v2, v2, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_b

    iget-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v4, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-object v4, v4, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/biometrics/BiometricSensor;

    iget v4, v4, Lcom/android/server/biometrics/BiometricSensor;->id:I

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_b
    iget-object v8, v1, Lcom/android/server/biometrics/AuthSession;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    iget-object v9, v1, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iget-object v10, v1, Lcom/android/server/biometrics/AuthSession;->mSensors:[I

    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mPreAuthInfo:Lcom/android/server/biometrics/PreAuthInfo;

    iget-boolean v2, v0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v2, :cond_c

    move v11, v6

    goto :goto_6

    :cond_c
    move v11, v5

    :goto_6
    iget v13, v0, Lcom/android/server/biometrics/PreAuthInfo;->callingUserId:I

    iget-wide v14, v1, Lcom/android/server/biometrics/AuthSession;->mOperationId:J

    iget-object v0, v1, Lcom/android/server/biometrics/AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-wide v4, v1, Lcom/android/server/biometrics/AuthSession;->mRequestId:J

    move-object/from16 v16, v0

    move-wide/from16 v17, v4

    invoke-virtual/range {v8 .. v18}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;[IZZIJLjava/lang/String;J)V

    iput v7, v1, Lcom/android/server/biometrics/AuthSession;->mState:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :goto_7
    const-string/jumbo v1, "Remote exception"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_d
    const/4 v0, 0x3

    iput v0, v1, Lcom/android/server/biometrics/AuthSession;->mState:I

    new-instance v0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/AuthSession;->startAllPreparedSensors(Ljava/util/function/Function;)V

    goto :goto_8

    :cond_e
    const-string/jumbo v0, "onCookieReceived: still waiting"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/BiometricService$2;

    iget-wide v2, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$1:J

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;->f$2:I

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onSystemEvent: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BiometricService"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService;->getAuthSessionIfCurrent(J)Lcom/android/server/biometrics/AuthSession;

    move-result-object v1

    if-nez v1, :cond_f

    const-string/jumbo v0, "handleOnSystemEvent: AuthSession is not current"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_f
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthSession;->hasAuthenticatedAndConfirmed()Z

    move-result v2

    const-string v3, "BiometricService/AuthSession"

    if-eqz v2, :cond_10

    const-string/jumbo v0, "onSystemEvent after successful auth"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_10
    iget-object v2, v1, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    invoke-virtual {v2}, Landroid/hardware/biometrics/PromptInfo;->isReceiveSystemEvents()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_9

    :cond_11
    :try_start_2
    iget-object v1, v1, Lcom/android/server/biometrics/AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v1, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSystemEvent(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    const-string/jumbo v1, "RemoteException"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
