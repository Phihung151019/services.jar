.class public final Lcom/android/server/HermesHalAdapter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final HERMES_AIDL_INTERFACE:Ljava/lang/String;


# instance fields
.field public aidlWeaver:Landroid/hardware/weaver/IWeaver;

.field public hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

.field public hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

.field public hidlWeaver:Landroid/hardware/weaver/V1_0/IWeaver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;->DESCRIPTOR:Ljava/lang/String;

    const-string v2, "/default"

    invoke-static {v0, v1, v2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/HermesHalAdapter;->HERMES_AIDL_INTERFACE:Ljava/lang/String;

    sget-object v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;->DESCRIPTOR:Ljava/lang/String;

    const-string/jumbo v0, "hermes_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private native getPdpData()Ljava/lang/String;
.end method

.method private native getSecureHWInfo()[B
.end method

.method public static getSehSelftestParameter(Ljava/lang/String;)[Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getSehSelftestParameter : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HERMES#HalAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;

    invoke-direct {v0}, Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;-><init>()V

    filled-new-array {v0}, [Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v1

    :goto_0
    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v2, v0, v1

    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;->type:I

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v1, Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;->cnt:I

    return-object v0
.end method

.method private native provisioning()I
.end method

.method private native secnvmPowerOff()I
.end method

.method private native secnvmPowerOn()I
.end method

.method private native selftest()[B
.end method

.method private native terminateService()I
.end method

.method private native updateCryptoFW()[B
.end method

.method private native verifyProvisioning()I
.end method


# virtual methods
.method public final GetSecureHWInfo()[B
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string v1, "GetSecureHWInfo called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz v1, :cond_1

    check-cast v1, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    invoke-virtual {v1}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->getSecureHWInfo()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget v1, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->getSecureHWInfo()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public final Provisioning()I
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string/jumbo v1, "Provisioning called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz v0, :cond_0

    check-cast v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->provisioning()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->provisioning()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public final SecnvmPowerOff()I
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string/jumbo v1, "SecnvmPowerOff called!."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz v0, :cond_0

    check-cast v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->secnvmPowerOff()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->secnvmPowerOff()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public final SecnvmPowerOn()I
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string/jumbo v1, "SecnvmPowerOn called!."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    iget-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz v0, :cond_0

    check-cast v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->secnvmPowerOn()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->secnvmPowerOn()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public final Selftest()[B
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string/jumbo v1, "Selftest called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz v1, :cond_1

    check-cast v1, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    invoke-virtual {v1}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->selftest()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget v1, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    if-eqz v1, :cond_0

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->selftest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public final TerminateService()I
    .locals 3

    const-string v0, "HERMES#HalAdapter"

    const-string/jumbo v1, "TerminateService called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v2, "hasAccessPermissionForTerm start."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x3e8

    if-ne v2, v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz v0, :cond_0

    check-cast v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->terminateService()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->terminateService()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0

    :cond_1
    const-string/jumbo p0, "TerminateService denied."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0
.end method

.method public final UpdateCryptoFW()[B
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string/jumbo v1, "UpdateCryptoFW called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    if-eqz v1, :cond_0

    check-cast v1, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    invoke-virtual {v1}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->updateCOSpatch()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget v1, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    if-nez v1, :cond_1

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz v1, :cond_2

    check-cast v1, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    invoke-virtual {v1}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->updateCryptoFW()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget v1, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    if-nez v1, :cond_1

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->updateCryptoFW()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public final VerifyProvisioning()I
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string/jumbo v1, "VerifyProvisioning called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz v0, :cond_0

    check-cast v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->verifyProvisioning()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->verifyProvisioning()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public final getAidlWeaverService()Landroid/hardware/weaver/IWeaver;
    .locals 4

    const-string v0, "/default"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/weaver/IWeaver;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sget v1, Landroid/hardware/weaver/IWeaver$Stub;->$r8$clinit:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/hardware/weaver/IWeaver;

    if-eqz v2, :cond_2

    move-object v3, v1

    check-cast v3, Landroid/hardware/weaver/IWeaver;

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/hardware/weaver/IWeaver$Stub$Proxy;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v3, Landroid/hardware/weaver/IWeaver$Stub$Proxy;->mCachedVersion:I

    iput-object v0, v3, Landroid/hardware/weaver/IWeaver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_0
    iput-object v3, p0, Lcom/android/server/HermesHalAdapter;->aidlWeaver:Landroid/hardware/weaver/IWeaver;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "HERMES#HalAdapter"

    const-string v1, "Does not have permissions to get AIDL weaver service"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->aidlWeaver:Landroid/hardware/weaver/IWeaver;

    return-object p0
.end method

.method public final getBigdataLog()Ljava/lang/String;
    .locals 2

    const-string v0, "HERMES#HalAdapter"

    const-string/jumbo v1, "getBigdataLog called!."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/String;

    check-cast v0, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;

    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub$Proxy;->getBigdataLog()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object v0

    iget-object v0, v0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    const-string/jumbo v1, "euc-kr"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/HermesHalAdapter;->getPdpData()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;
    .locals 4

    const-string/jumbo v0, "get getExtAidlService"

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/HermesHalAdapter;->HERMES_AIDL_INTERFACE:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "HERMES#HalAdapter"

    const-string/jumbo v2, "getExtAidlService: getExtension is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v2}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    const-string v2, "HERMES#HalAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;
    .locals 4

    const-string/jumbo v0, "get HermesHAL : "

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/HermesHalAdapter;->HERMES_AIDL_INTERFACE:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/samsung/hardware/security/hermes/ISehHermesCommand$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    if-nez v2, :cond_1

    const-string v0, "HERMES#HalAdapter"

    const-string/jumbo v2, "getService: halService is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v2, "HERMES#HalAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method
