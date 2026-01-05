.class public final synthetic Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/hardware/biometrics/PromptInfo;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:J

.field public final synthetic f$5:Landroid/os/IBinder;

.field public final synthetic f$6:J

.field public final synthetic f$7:Landroid/hardware/biometrics/IBiometricServiceReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$5:Landroid/os/IBinder;

    iput-wide p3, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$4:J

    iput-wide p5, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$6:J

    iput p7, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$1:I

    iput-object p8, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$7:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iput-object p9, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$2:Landroid/hardware/biometrics/PromptInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$2:Landroid/hardware/biometrics/PromptInfo;

    iput-object p4, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$4:J

    iput-object p7, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$5:Landroid/os/IBinder;

    iput-wide p8, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$6:J

    iput-object p10, p0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$7:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    iget-object v9, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$5:Landroid/os/IBinder;

    iget-wide v7, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$4:J

    iget-wide v10, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$6:J

    iget v4, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$1:I

    iget-object v12, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$7:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v6, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$2:Landroid/hardware/biometrics/PromptInfo;

    iget-object v3, v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    new-instance v2, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;

    invoke-direct/range {v2 .. v12}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;JLandroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;)V

    iget-object v0, v3, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/server/biometrics/BiometricService;

    iget v7, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$1:I

    iget-object v8, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$2:Landroid/hardware/biometrics/PromptInfo;

    iget-object v9, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget-wide v13, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$4:J

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$5:Landroid/os/IBinder;

    iget-wide v3, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$6:J

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda2;->f$7:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const-string v15, "BiometricService"

    const-string/jumbo v5, "bp_auth_error: "

    const-string/jumbo v6, "handleAuthenticate: modality("

    move-wide v10, v3

    :try_start_0
    iget-object v3, v2, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    iget-object v4, v2, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v12, v5

    iget-object v5, v2, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    move-object/from16 v16, v6

    iget-object v6, v2, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-wide/from16 v17, v10

    invoke-virtual {v8}, Landroid/hardware/biometrics/PromptInfo;->isDisallowBiometricsIfPolicyExists()Z

    move-result v10

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v19, v12

    iget-object v12, v2, Lcom/android/server/biometrics/BiometricService;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    move-object/from16 v20, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v20

    invoke-static/range {v3 .. v12}, Lcom/android/server/biometrics/PreAuthInfo;->create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManagerImpl;)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object v12

    invoke-virtual {v8}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v8}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040dff

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    invoke-virtual {v12}, Lcom/android/server/biometrics/PreAuthInfo;->getEligibleModalities()I

    move-result v3

    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    invoke-virtual {v8}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultSubtitle()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040249

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10405a6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104056a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040da9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/hardware/biometrics/PromptInfo;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_3
    invoke-virtual {v12}, Lcom/android/server/biometrics/PreAuthInfo;->getPreAuthenticateStatus()Landroid/util/Pair;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), status("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), preAuthInfo: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requestId: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " promptInfo.isIgnoreEnrollmentState: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v0, v12, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v12, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz v0, :cond_7

    iget-object v0, v12, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x8000

    invoke-virtual {v8, v0}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    :cond_7
    move-object v11, v8

    iget v8, v12, Lcom/android/server/biometrics/PreAuthInfo;->userId:I

    move-object v10, v9

    move-wide v4, v13

    move-object/from16 v9, v16

    move-wide/from16 v6, v17

    move-object/from16 v3, v19

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;Lcom/android/server/biometrics/PreAuthInfo;)V

    goto :goto_5

    :cond_8
    move-object/from16 v9, v16

    const-string v1, "BMBS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v9, v0, v1, v7}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    const-string/jumbo v1, "Remote exception"

    invoke-static {v15, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
