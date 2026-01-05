.class public final Lcom/android/server/biometrics/SemBiometricSysUiWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContextProvider;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSession:Landroid/util/Pair;

.field public final mGetModalityFunc:Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;

.field public final mHandler:Landroid/os/Handler;

.field public final mInstanceIdGenerator:Lcom/android/internal/logging/InstanceIdSequence;

.field public final mSessionToInstanceId:Ljava/util/Map;

.field public final mSessions:Ljava/util/Map;

.field public final mShowDialogWatchdog:Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;

.field public final mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/log/BiometricContextProvider;Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/InstanceIdSequence;

    const/high16 v1, 0x100000

    invoke-direct {v0, v1}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mInstanceIdGenerator:Lcom/android/internal/logging/InstanceIdSequence;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessionToInstanceId:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContextProvider;

    iput-object p4, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mGetModalityFunc:Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;

    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    sget-object p1, Lcom/android/server/biometrics/SemBiometricSysUiManager;->sInstance:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    new-instance p1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;)V

    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mShowDialogWatchdog:Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final hideAuthenticationDialog(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "hideAuthenticationDialog: no session info with "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "SemBiometricSysUiWrapper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda4;

    const/4 v0, 0x2

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onBiometricError(III)V
    .locals 2

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    new-instance p3, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;I)V

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiWrapper;III)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;[IZZIJLjava/lang/String;J)V
    .locals 13

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v7

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessions:Ljava/util/Map;

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    const-string/jumbo v2, "SemBiometricSysUiWrapper"

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "showAuthenticationDialog: no session info with "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p9

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x8000

    if-eqz p2, :cond_6

    array-length v6, p2

    if-lez v6, :cond_6

    array-length v6, p2

    move v8, v3

    move v9, v8

    :goto_0
    iget-object v10, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mGetModalityFunc:Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;

    if-ge v8, v6, :cond_1

    aget v12, p2, v8

    invoke-virtual {v10, v12}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;->apply(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    or-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "KEY_AVAILABILITY_BIOMETRIC"

    invoke-virtual {v11, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    aget v0, p2, v3

    invoke-virtual {v10, v0}, Lcom/android/server/biometrics/BiometricService$$ExternalSyntheticLambda0;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_7

    const/4 v5, 0x2

    const/16 v6, 0x8

    if-eq v0, v5, :cond_5

    const/4 v5, 0x4

    if-eq v0, v5, :cond_4

    if-eq v0, v6, :cond_3

    const/16 v5, 0x100

    if-eq v0, v5, :cond_2

    const-string/jumbo v5, "biometricAuthenticatorModalityToVendorSysUiType: Unknown modality:"

    const-string v6, "BiometricUtils"

    invoke-static {v0, v5, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v3

    goto :goto_1

    :cond_2
    const/16 v5, 0x4000

    goto :goto_1

    :cond_3
    const/16 v5, 0x1000

    goto :goto_1

    :cond_4
    const/16 v5, 0x2000

    goto :goto_1

    :cond_5
    move v5, v6

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_c

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/android/server/biometrics/Utils;->isWorkProfile(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v6, "MANAGED_PROFILE"

    invoke-virtual {v11, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "MANAGED_PROFILE_COLOR"

    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v0

    invoke-virtual {v11, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setManagedProfileInfo: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_8
    :goto_2
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "SECURE_FOLDER"

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SECURE_FOLDER_NAME"

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const-string/jumbo v0, "MANAGED_PROFILE_KNOX"

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "MANAGED_PROFILE_KNOX_NAME"

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "knox_finger_print_plus"

    invoke-static {v0, v3, v7, v2, v4}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    if-ne v0, v4, :cond_a

    move v0, v4

    goto :goto_3

    :cond_a
    move v0, v3

    :goto_3
    const-string/jumbo v6, "MANAGED_PROFILE_KNOX_TWO_FACTOR"

    invoke-virtual {v11, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v7, v2, v4}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result v0

    if-ne v0, v4, :cond_b

    invoke-virtual {p1}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    const-string/jumbo v0, "MANAGED_PROFILE_KNOX_ONLY_CONFIRM_BIOMETRIC"

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_b
    :goto_4
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v3, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;

    move-object v12, p1

    move/from16 v6, p4

    move-wide/from16 v9, p6

    move-object/from16 v8, p8

    invoke-direct/range {v2 .. v12}, Lcom/android/server/biometrics/SemBiometricSysUiManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;IIZILjava/lang/String;JLandroid/os/Bundle;Landroid/hardware/biometrics/PromptInfo;)V

    invoke-virtual {v3, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->handleRequest(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mCurrentSession:Landroid/util/Pair;

    const-wide/16 v0, 0xbb8

    iget-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mShowDialogWatchdog:Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_c
    const-string/jumbo p0, "showAuthenticationDialog: Unknown prompt type"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/biometrics/BiometricService$2;

    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, p1, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance p1, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;

    const/4 v3, 0x3

    const/4 v4, -0x1

    move-object p2, p0

    move-wide/from16 p3, v1

    move/from16 p5, v3

    move/from16 p6, v4

    invoke-direct/range {p1 .. p6}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/BiometricService$2;JII)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
