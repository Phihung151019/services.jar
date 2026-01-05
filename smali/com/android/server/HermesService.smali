.class public final Lcom/android/server/HermesService;
.super Lcom/samsung/android/service/HermesService/IHermesService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final halAdapter:Lcom/android/server/HermesHalAdapter;

.field public final mContext:Landroid/content/Context;

.field public final mReceiver:Lcom/android/server/HermesService$3;


# direct methods
.method public static -$$Nest$mreportToDiagmon(Lcom/android/server/HermesService;)V
    .locals 11

    const-string v0, "1"

    const-string/jumbo v1, "hgi9mdaexj"

    const-string v2, "/data/log/sepunion/hermes/parsed_skeymast.txt"

    const-string/jumbo v3, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    const/16 v4, 0x20

    invoke-static {v4, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "DiagMon"

    invoke-virtual {v5, v10, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v10, "CFailLogUpload"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v6, "ServiceID"

    invoke-virtual {v7, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Ext"

    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v6, "IntentOnly"

    invoke-virtual {v7, v6, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v6, "ClientV"

    const-string v7, "1.0.1"

    invoke-virtual {v8, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "UiMode"

    const-string v7, "0"

    invoke-virtual {v8, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "ResultCode"

    const-string v7, "Device Key"

    invoke-virtual {v8, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "WifiOnlyFeature"

    invoke-virtual {v8, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "EventID"

    invoke-virtual {v8, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Description"

    const-string v6, "DEVICE KEY DETECTED"

    invoke-virtual {v8, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IntentOnlyMode"

    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Agree"

    const-string v1, "D"

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "LogPath"

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ServiceName"

    const-string/jumbo v1, "SAMSUNG KEYMASTER"

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "uploadMO"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.android.diagmonagent"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "HERMES#Service"

    const-string/jumbo v0, "reportToDiagmon done"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p0, Lcom/android/server/BigdataException;

    sget-object v0, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_SEND_DIAGMON:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {p0, v0}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "hermes_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;-><init>()V

    new-instance v0, Lcom/android/server/HermesService$3;

    invoke-direct {v0, p0}, Lcom/android/server/HermesService$3;-><init>(Lcom/android/server/HermesService;)V

    iput-object v0, p0, Lcom/android/server/HermesService;->mReceiver:Lcom/android/server/HermesService$3;

    iput-object p1, p0, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Lcom/android/server/HermesHalAdapter;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->aidlWeaver:Landroid/hardware/weaver/IWeaver;

    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->hidlWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-virtual {p1}, Lcom/android/server/HermesHalAdapter;->getService()Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->hc:Lvendor/samsung/hardware/security/hermes/ISehHermesCommand;

    invoke-virtual {p1}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    invoke-virtual {p1}, Lcom/android/server/HermesHalAdapter;->getAidlWeaverService()Landroid/hardware/weaver/IWeaver;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/HermesHalAdapter;->aidlWeaver:Landroid/hardware/weaver/IWeaver;

    iput-object p1, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    return-void
.end method


# virtual methods
.method public final TransmitCollectedDataToServer()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/android/server/HermesService$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/HermesService$1;-><init>(Lcom/android/server/HermesService;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occurs on TransmitCollectedDataToServer. Err = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HERMES#Service"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getFailureCount(I)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "getFailureCount called!."

    const-string v3, "HERMES#HalAdapter"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v1, [I

    const/16 v4, -0x64

    aput v4, v2, v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getAidlWeaverService()Landroid/hardware/weaver/IWeaver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/HermesHalAdapter;->aidlWeaver:Landroid/hardware/weaver/IWeaver;

    const v5, 0x186a0

    if-eqz v4, :cond_0

    new-array p0, v1, [B

    aput-byte v0, p0, v0

    add-int/2addr p1, v5

    invoke-interface {v4, p1, p0}, Landroid/hardware/weaver/IWeaver;->read(I[B)Landroid/hardware/weaver/WeaverReadResponse;

    move-result-object p0

    iget-wide p0, p0, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    long-to-int p0, p0

    aput p0, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/hardware/weaver/V1_0/IWeaver;->getService(Z)Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hidlWeaver:Landroid/hardware/weaver/V1_0/IWeaver;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    :try_start_2
    const-string v1, "Does not have permissions to get HIDL weaver service"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/HermesHalAdapter;->hidlWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    iput-object v1, p0, Lcom/android/server/HermesHalAdapter;->hidlWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "supporthidlWeaver"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->hidlWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    add-int/2addr p1, v5

    new-instance v3, Lcom/android/server/HermesHalAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/HermesHalAdapter$$ExternalSyntheticLambda0;-><init>([I)V

    check-cast p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;

    invoke-virtual {p0, p1, v1, v3}, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V

    aget p0, v2, v0

    goto :goto_3

    :cond_1
    const-string/jumbo p0, "supportExtensionHal failed"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    aget p0, v2, v0

    :goto_3
    return p0
.end method

.method public final getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hermesCosPatchTest([B)[B
    .locals 2

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "cosPatchTest called!."

    const-string v1, "HERMES#HalAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    if-eqz v0, :cond_0

    check-cast v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    invoke-virtual {v0, p1}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->updateCOSpatchTest([B)Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    return-object p0

    :cond_0
    const-string/jumbo p0, "supportExtensionHal failed"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hermesCosUnitTest(Ljava/lang/String;)[B
    .locals 2

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cosUnitTest called : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HERMES#HalAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    if-eqz v0, :cond_0

    check-cast v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    invoke-virtual {v0, p1}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->cosUnitTest(Ljava/lang/String;)Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    return-object p0

    :cond_0
    const-string/jumbo p0, "supportExtensionHal failed"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hermesGetAppletVersion()[B
    .locals 2

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "getAppletVersion called!."

    const-string v1, "HERMES#HalAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    if-eqz v0, :cond_0

    check-cast v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->getAppletVersions()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    return-object p0

    :cond_0
    const-string/jumbo p0, "supportExtensionHal failed"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hermesGetSeId()[B
    .locals 2

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "getSeId called!."

    const-string v1, "HERMES#HalAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    if-eqz v0, :cond_0

    check-cast v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->getSeId()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    return-object p0

    :cond_0
    const-string/jumbo p0, "supportExtensionHal failed"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hermesGetSecureHWInfo()[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->GetSecureHWInfo()[B

    move-result-object p0

    return-object p0
.end method

.method public final hermesProvisioning()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->Provisioning()I

    move-result p0

    return p0
.end method

.method public final hermesSecnvmPowerOff()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->SecnvmPowerOff()I

    move-result p0

    return p0
.end method

.method public final hermesSecnvmPowerOn()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->SecnvmPowerOn()I

    move-result p0

    return p0
.end method

.method public final hermesSecureHwPowerOff()I
    .locals 3

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "secureHwPowerOff called!."

    const-string v1, "HERMES#HalAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HermesService"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    if-eqz v2, :cond_0

    const-string/jumbo p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    check-cast v2, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    invoke-virtual {v2, p0}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->turnOffSecureHardwarePower([B)Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    return p0

    :cond_0
    const-string/jumbo p0, "supportExtensionHal failed"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final hermesSecureHwPowerOn()I
    .locals 3

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "secureHwPowerOn called!."

    const-string v1, "HERMES#HalAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HermesService"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    if-eqz v2, :cond_0

    const-string/jumbo p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    check-cast v2, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    invoke-virtual {v2, p0}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->turnOnSecureHardwarePower([B)Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    return p0

    :cond_0
    const-string/jumbo p0, "supportExtensionHal failed"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final hermesSelftest()[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->Selftest()[B

    move-result-object p0

    return-object p0
.end method

.method public final hermesSelftest2(Ljava/lang/String;)[B
    .locals 2

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "HERMES#HalAdapter"

    const-string/jumbo v1, "Selftest called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/HermesHalAdapter;->getSehSelftestParameter(Ljava/lang/String;)[Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    check-cast p0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    invoke-virtual {p0, p1}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->selftest([Lvendor/samsung/hardware/security/hermes/extension/SehSelftestParameter;)Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget p1, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hermesSendApdu([B)[B
    .locals 2

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "sendApdu called!."

    const-string v1, "HERMES#HalAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    if-eqz v0, :cond_0

    check-cast v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    invoke-virtual {v0, p1}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->sendAPDU([B)Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B

    return-object p0

    :cond_0
    const-string/jumbo p0, "supportExtensionHal failed"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hermesTerminateService()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->TerminateService()I

    move-result p0

    return p0
.end method

.method public final hermesUpdateApplet()[B
    .locals 2

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "HERMES#HalAdapter"

    const-string/jumbo v1, "UpdateApplet called."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->getExtAidlService()Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HermesHalAdapter;->hce:Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension;

    if-eqz v0, :cond_0

    check-cast v0, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;

    invoke-virtual {v0}, Lvendor/samsung/hardware/security/hermes/extension/ISehHermesExtension$Stub$Proxy;->updateApplet()Lvendor/samsung/hardware/security/hermes/SehCommandResult;

    move-result-object p0

    iget v0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->result:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lvendor/samsung/hardware/security/hermes/SehCommandResult;->msg:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hermesUpdateCryptoFW()[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->UpdateCryptoFW()[B

    move-result-object p0

    return-object p0
.end method

.method public final hermesVerifyProvisioning()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/HermesService;->halAdapter:Lcom/android/server/HermesHalAdapter;

    invoke-virtual {p0}, Lcom/android/server/HermesHalAdapter;->VerifyProvisioning()I

    move-result p0

    return p0
.end method

.method public final onBootPhase(I)V
    .locals 2

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HermesService onBootPhase: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HERMES#Service"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/HermesService;->TransmitCollectedDataToServer()V

    :cond_0
    return-void
.end method

.method public final onCleanupUser(I)V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public final onStartUser(I)V
    .locals 0

    return-void
.end method

.method public final onStopUser(I)V
    .locals 0

    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 0

    return-void
.end method

.method public final onUnlockUser(I)V
    .locals 0

    return-void
.end method
