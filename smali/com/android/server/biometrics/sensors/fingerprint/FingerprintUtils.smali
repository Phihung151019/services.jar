.class public final Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricUtils;


# static fields
.field static final INTENT_ACTION_ADD_FINGERPRINT:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field static final INTENT_ACTION_REMOVE_FINGERPRINT:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field static final INTENT_ACTION_RESET_FINGERPRINT:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field static final INTENT_DEFAULT_VERIFICATION_TYPE:Ljava/lang/String; = "Device Credential"

.field static final INTENT_KEY_FINGERPRINT_INDEX:Ljava/lang/String; = "fingerIndex"

.field static final INTENT_KEY_VERIFICATION_TYPE:Ljava/lang/String; = "verificationType"

.field public static final sInstanceLock:Ljava/lang/Object;

.field public static sInstances:Landroid/util/SparseArray;


# instance fields
.field public final mFileName:Ljava/lang/String;

.field public mIsBootComplete:Z

.field mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public static copyOptions(ILandroid/hardware/fingerprint/FingerprintAuthenticateOptions;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .locals 1

    new-instance v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getSensorId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getDisplayState()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setDisplayState(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->isIgnoreEnrollmentState()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setIgnoreEnrollmentState(Z)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->getAttributionTag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;
    .locals 4

    const-string/jumbo v0, "settings_fingerprint_"

    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    invoke-direct {v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    monitor-exit v1

    return-object p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static resetForTest()V
    .locals 2

    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->sInstances:Landroid/util/SparseArray;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 2

    check-cast p3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/hardware/fingerprint/Fingerprint;->setName(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result p3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semSendTemplateChangedBroadCast$1(IILandroid/content/Context;Landroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final deleteStateForUser(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->deleteBiometricFile()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mFileName:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/biometrics/sensors/BiometricUserState;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final hasValidBiometricUserState(Landroid/content/Context;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mIsInvalidBiometricState:Z

    return p0
.end method

.method public putStateForUserForTest(ILcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final removeBiometricForUser(Landroid/content/Context;II)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->removeBiometric(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->semSendTemplateChangedBroadCast$1(IILandroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->get()Lcom/android/server/biometrics/SemBioAnalyticsManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    const/4 p2, -0x1

    if-ne p3, p2, :cond_2

    const-string p3, "ALL"

    goto :goto_1

    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    :goto_1
    const/4 v0, 0x3

    const-string v1, "FPRM"

    invoke-direct {p1, p2, v0, v1, p3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->fpInsertLog(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    invoke-static {}, Lcom/android/server/biometrics/SemBioLoggingManager;->get()Lcom/android/server/biometrics/SemBioLoggingManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioLoggingManager;->getFpHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final semSendTemplateChangedBroadCast$1(IILandroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;-><init>(IILandroid/content/Context;Landroid/content/Intent;)V

    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mIsBootComplete:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils$$ExternalSyntheticLambda0;->run()V

    return-void
.end method

.method public final setInvalidationInProgress(Landroid/content/Context;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUserState;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
