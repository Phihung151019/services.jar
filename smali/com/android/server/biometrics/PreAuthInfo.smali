.class public final Lcom/android/server/biometrics/PreAuthInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final callingUserId:I

.field public final confirmationRequested:Z

.field public final credentialAvailable:Z

.field public final credentialRequested:Z

.field public final eligibleSensors:Ljava/util/List;

.field public final ineligibleSensors:Ljava/util/List;

.field public final mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

.field public final mBiometricRequested:Z

.field public final mBiometricStrengthRequested:I

.field public final mIsMandatoryBiometricsAuthentication:Z

.field public final mOnlyMandatoryBiometricsRequested:Z

.field public final userId:I


# direct methods
.method public constructor <init>(ZIZLjava/util/List;Ljava/util/List;ZLandroid/hardware/biometrics/PromptInfo;IILcom/android/server/biometrics/BiometricCameraManagerImpl;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    iput p2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    iput-object p10, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    iput-boolean p3, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    iput-object p4, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    iput-boolean p6, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    invoke-virtual {p7}, Landroid/hardware/biometrics/PromptInfo;->isConfirmationRequested()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/biometrics/PreAuthInfo;->confirmationRequested:Z

    invoke-virtual {p7}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    iput p8, p0, Lcom/android/server/biometrics/PreAuthInfo;->userId:I

    iput p9, p0, Lcom/android/server/biometrics/PreAuthInfo;->callingUserId:I

    iput-boolean p11, p0, Lcom/android/server/biometrics/PreAuthInfo;->mOnlyMandatoryBiometricsRequested:Z

    iput-boolean p12, p0, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    return-void
.end method

.method public static create(Landroid/app/trust/ITrustManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/server/biometrics/BiometricService$SettingObserver;Ljava/util/List;ILandroid/hardware/biometrics/PromptInfo;Ljava/lang/String;ZLandroid/content/Context;Lcom/android/server/biometrics/BiometricCameraManagerImpl;)Lcom/android/server/biometrics/PreAuthInfo;
    .locals 21

    move-object/from16 v0, p2

    move/from16 v8, p4

    move-object/from16 v7, p5

    move-object/from16 v1, p6

    move-object/from16 v10, p9

    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->semGetBiometricType()I

    move-result v2

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_1

    or-int/lit8 v3, v3, 0x8

    :cond_1
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    const/16 v6, 0x8

    and-int/2addr v2, v6

    if-eqz v2, :cond_3

    or-int/lit16 v3, v3, 0x100

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v2

    or-int/lit16 v2, v2, 0xff

    invoke-virtual {v7, v2}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    :cond_4
    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v2

    const/4 v9, 0x1

    const/high16 v11, 0x10000

    if-ne v2, v11, :cond_5

    move v2, v9

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v12

    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsForAllProfiles(I)V

    :cond_6
    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateMandatoryBiometricsRequirementsForAllProfiles(I)V

    :cond_7
    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsEnabled:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mMandatoryBiometricsRequirementsSatisfied:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v14, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFingerprintEnrolledForUser:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v13, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;->mFaceEnrolledForUser:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v13, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(I)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v9

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    :goto_2
    and-int/2addr v12, v11

    if-ne v12, v11, :cond_a

    move v11, v9

    goto :goto_3

    :cond_a
    const/4 v11, 0x0

    :goto_3
    const-string v12, "BiometricService/PreAuthInfo"

    if-eqz v4, :cond_b

    if-eqz v11, :cond_b

    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/app/trust/ITrustManager;->isInSignificantPlace()Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v4, v9

    goto :goto_4

    :catch_0
    const-string/jumbo v4, "Remote exception while trying to check if user is in a trusted location."

    invoke-static {v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_d

    const/16 v4, 0xf

    invoke-virtual {v7, v4}, Landroid/hardware/biometrics/PromptInfo;->setAuthenticators(I)V

    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_c

    const/high16 v4, 0x1040000

    move-object/from16 v11, p8

    invoke-virtual {v11, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/hardware/biometrics/PromptInfo;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_c
    move-object/from16 v11, p8

    :goto_5
    move v4, v9

    goto :goto_6

    :cond_d
    move-object/from16 v11, p8

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v13

    and-int/lit16 v13, v13, 0xff

    if-eqz v13, :cond_e

    move v13, v9

    goto :goto_7

    :cond_e
    const/4 v13, 0x0

    :goto_7
    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v15

    const v16, 0x8000

    and-int v15, v15, v16

    if-eqz v15, :cond_f

    move v15, v9

    goto :goto_8

    :cond_f
    const/4 v15, 0x0

    :goto_8
    invoke-virtual {v11}, Landroid/content/Context;->getDeviceId()I

    move-result v11

    move-object/from16 v5, p0

    invoke-interface {v5, v8, v11}, Landroid/app/trust/ITrustManager;->isDeviceSecure(II)Z

    move-result v5

    const-string/jumbo v11, "create: "

    const-string v9, ", "

    invoke-static {v11, v4, v9, v13, v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v6, v5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_25

    move-object/from16 v11, p3

    check-cast v11, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_25

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v2

    move-object/from16 v2, v17

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    move/from16 v17, v3

    if-eqz v3, :cond_10

    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    and-int v3, v17, v3

    if-nez v3, :cond_10

    move/from16 v3, v17

    move/from16 v2, v18

    goto :goto_9

    :cond_10
    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->getAllowedSensorIds()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v7}, Landroid/hardware/biometrics/PromptInfo;->isIgnoreEnrollmentState()Z

    move-result v19

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v20

    move/from16 p0, v6

    if-nez v20, :cond_11

    iget v6, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    move/from16 v19, v9

    const/4 v3, 0x2

    goto/16 :goto_e

    :cond_11
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->oemStrength:I

    invoke-static {v3, v14}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v6

    invoke-static {v6, v14}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v6

    if-eqz v3, :cond_12

    if-nez v6, :cond_12

    const/4 v3, 0x5

    :goto_a
    move/from16 v19, v9

    goto/16 :goto_e

    :cond_12
    if-nez v3, :cond_13

    move/from16 v19, v9

    const/4 v3, 0x4

    goto/16 :goto_e

    :cond_13
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_14

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_14
    :try_start_1
    iget-object v6, v2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v6, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    :catch_1
    move/from16 v19, v9

    :catch_2
    const/4 v3, 0x6

    goto/16 :goto_e

    :cond_15
    iget-object v6, v2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v6, v8, v1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    if-nez v19, :cond_16

    const/4 v3, 0x7

    goto :goto_a

    :cond_16
    if-eqz v10, :cond_19

    const/16 v6, 0x8

    if-ne v3, v6, :cond_19

    iget-object v6, v10, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_17

    move/from16 v19, v9

    const/4 v7, 0x2

    const/4 v9, 0x1

    :try_start_2
    invoke-virtual {v6, v9, v7}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_b

    :cond_17
    move/from16 v19, v9

    :cond_18
    const/4 v6, 0x0

    :goto_b
    if-eqz v6, :cond_1a

    const/16 v3, 0xc

    goto/16 :goto_e

    :cond_19
    move/from16 v19, v9

    :cond_1a
    iget-object v6, v2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v6, v8}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getLockoutModeForUser(I)I

    move-result v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v9, 0x1

    if-ne v6, v9, :cond_1b

    const/16 v3, 0xa

    goto :goto_e

    :cond_1b
    const/4 v7, 0x2

    if-ne v6, v7, :cond_1c

    const/16 v3, 0xb

    goto :goto_e

    :cond_1c
    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledForApps(I)Z

    move-result v6

    if-nez v6, :cond_1d

    const/16 v3, 0x8

    goto :goto_e

    :cond_1d
    if-eqz p7, :cond_23

    if-eq v3, v7, :cond_20

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1f

    const/16 v6, 0x8

    if-eq v3, v6, :cond_1e

    const-string v9, "Error modality="

    invoke-static {v3, v9, v12}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_c

    :cond_1e
    const/16 v9, 0x80

    goto :goto_c

    :cond_1f
    const/16 v6, 0x8

    const/16 v9, 0x100

    goto :goto_c

    :cond_20
    const/16 v6, 0x8

    const/16 v9, 0x20

    :goto_c
    if-eqz v9, :cond_22

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-virtual {v7, v6, v8}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v6

    and-int/2addr v6, v9

    if-eqz v6, :cond_21

    const/4 v9, 0x1

    goto :goto_d

    :cond_21
    const/4 v9, 0x0

    :goto_d
    const-string/jumbo v6, "isBiometricDisabledByDevicePolicy("

    const-string v0, ","

    const-string v7, ")="

    invoke-static {v3, v8, v6, v0, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_23

    const/4 v3, 0x3

    goto :goto_e

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Modality unknown to devicePolicyManager: "

    invoke-static {v3, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    const/4 v3, 0x1

    :goto_e
    const-string/jumbo v0, "Package: "

    const-string v6, " Sensor ID: "

    invoke-static {v0, v1, v6}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Modality: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    const-string v7, " User id: "

    const-string v9, " Status: "

    invoke-static {v6, v8, v7, v9, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {v0, v3, v12}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v9, 0x1

    if-ne v3, v9, :cond_24

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_24
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    move/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v7, p5

    move/from16 v3, v17

    move/from16 v2, v18

    move/from16 v9, v19

    goto/16 :goto_9

    :cond_25
    move/from16 v18, v2

    move/from16 p0, v6

    move/from16 v19, v9

    new-instance v0, Lcom/android/server/biometrics/PreAuthInfo;

    move/from16 v9, p4

    move/from16 v6, p0

    move-object/from16 v7, p5

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v11, v18

    move/from16 v12, v19

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/PreAuthInfo;-><init>(ZIZLjava/util/List;Ljava/util/List;ZLandroid/hardware/biometrics/PromptInfo;IILcom/android/server/biometrics/BiometricCameraManagerImpl;ZZ)V

    return-object v0
.end method


# virtual methods
.method public final calculateErrorByPriority()Landroid/util/Pair;
    .locals 8

    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    const/16 v7, 0xb

    if-ne v6, v7, :cond_2

    :cond_1
    move-object v1, v5

    :cond_2
    const/4 v7, 0x7

    if-ne v6, v7, :cond_3

    move-object v4, v5

    :cond_3
    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    move-object v2, v5

    :cond_4
    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    return-object v1

    :cond_6
    if-eqz v2, :cond_7

    return-object v2

    :cond_7
    if-eqz v3, :cond_8

    return-object v3

    :cond_8
    if-eqz v4, :cond_9

    return-object v4

    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0
.end method

.method public final getEligibleModalities()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    if-eqz p0, :cond_1

    or-int/lit8 p0, v1, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final getInternalStatus()Landroid/util/Pair;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricCameraManager:Lcom/android/server/biometrics/BiometricCameraManagerImpl;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricCameraManagerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1, v0}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "BiometricService/PreAuthInfo"

    const/16 v5, 0xc

    const/16 v6, 0x8

    const/16 v7, 0x9

    iget-boolean v8, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    iget-boolean v9, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    iget-boolean v10, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    if-eqz v10, :cond_8

    if-eqz v8, :cond_8

    if-nez v9, :cond_3

    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_6

    :cond_2
    move v0, v7

    goto/16 :goto_6

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v2

    :goto_2
    if-ge v7, v0, :cond_4

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/biometrics/BiometricSensor;

    iget v8, v8, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v2, v8

    goto :goto_2

    :cond_4
    if-eqz v9, :cond_5

    or-int/lit8 p0, v2, 0x1

    move v0, v1

    move v1, p0

    goto/16 :goto_6

    :cond_5
    if-ne v2, v6, :cond_6

    if-eqz v3, :cond_6

    :goto_3
    move v1, v2

    move v0, v5

    goto/16 :goto_6

    :cond_6
    move v0, v1

    :cond_7
    :goto_4
    move v1, v2

    goto :goto_6

    :cond_8
    if-eqz v10, :cond_b

    iget-object v7, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v2

    :goto_5
    if-ge v7, v0, :cond_9

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/biometrics/BiometricSensor;

    iget v8, v8, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v2, v8

    goto :goto_5

    :cond_9
    if-ne v2, v6, :cond_6

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->calculateErrorByPriority()Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6

    :cond_b
    if-eqz v8, :cond_c

    if-eqz v9, :cond_2

    move v0, v1

    goto :goto_6

    :cond_c
    iget-boolean v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->mOnlyMandatoryBiometricsRequested:Z

    if-eqz v1, :cond_d

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->mIsMandatoryBiometricsAuthentication:Z

    if-nez p0, :cond_d

    const/16 v0, 0xd

    goto :goto_4

    :cond_d
    const-string/jumbo p0, "No authenticators requested"

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getCanAuthenticateInternal Modality: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AuthenticatorStatus: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getPreAuthenticateStatus()Landroid/util/Pair;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getInternalStatus()Landroid/util/Pair;

    move-result-object p0

    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->authenticatorStatusToBiometricConstant(I)I

    move-result v0

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    :pswitch_1
    new-instance p0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BiometricRequested: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", StrengthRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->mBiometricStrengthRequested:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", CredentialRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", Eligible:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->eligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    iget v2, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "}, Ineligible:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/PreAuthInfo;->ineligibleSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "}, CredentialAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/biometrics/PreAuthInfo;->credentialAvailable:Z

    const-string v1, ", "

    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
