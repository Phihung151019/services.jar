.class public final Lcom/android/server/asks/safeInstall/AASAServiceChecker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final context:Landroid/content/Context;

.field public final safeInstallVo:Lcom/android/server/asks/safeInstall/SafeInstallVo;


# direct methods
.method public constructor <init>(Lcom/android/server/asks/safeInstall/SafeInstallVo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker;->safeInstallVo:Lcom/android/server/asks/safeInstall/SafeInstallVo;

    iput-object p2, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getPolicyResult()I
    .locals 10

    const-string/jumbo v0, "PackageInformation_AASAService"

    const-string v1, "AASAService result_2 : "

    const-string v2, "AASAService version : "

    const/16 v3, 0x64

    :try_start_0
    iget-object v4, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.aasaservice"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    const v4, 0x6021664

    if-lt v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/asks/safeInstall/AASAServiceChecker;->makeBundle()Landroid/os/Bundle;

    move-result-object v2

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/server/asks/safeInstall/AASAServiceChecker$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v2, v4, v5}, Lcom/android/server/asks/safeInstall/AASAServiceChecker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/asks/safeInstall/AASAServiceChecker;Landroid/os/Bundle;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long p0, v6, v8

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    invoke-virtual {v5, v6, v7, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const-wide/16 v5, 0xc8

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0

    :cond_1
    const-string p0, "AASAService is not supported"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final makeBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/android/server/asks/safeInstall/AASAServiceChecker;->safeInstallVo:Lcom/android/server/asks/safeInstall/SafeInstallVo;

    iget-object v1, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "permList"

    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->permList:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "servicePermList"

    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->servicePermList:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "baseCodePath"

    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "signatures"

    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->signatures:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "initiatingPackageName"

    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "originatingPackageName"

    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->originatingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "originalInstallerPackageName"

    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->originalInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sdkVersion"

    iget v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->sdkVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "referralUrl"

    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->referralUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "downloadUrl"

    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "safeInstallToken"

    iget-object v2, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->safeInstallToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "safeInstallCert"

    iget-object p0, p0, Lcom/android/server/asks/safeInstall/SafeInstallVo;->safeInstallCert:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
