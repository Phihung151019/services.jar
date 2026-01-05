.class public final synthetic Lcom/android/server/am/mars/database/scpm/ScpmHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/mars/database/scpm/ScpmHelper;

.field public final synthetic f$1:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/database/scpm/ScpmHelper;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/database/scpm/ScpmHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/database/scpm/ScpmHelper;

    iput-object p2, p0, Lcom/android/server/am/mars/database/scpm/ScpmHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/mars/database/scpm/ScpmHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/database/scpm/ScpmHelper;

    iget-object p0, p0, Lcom/android/server/am/mars/database/scpm/ScpmHelper$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, v0, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.scpm.policy"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ScpmHelper"

    const-string/jumbo v2, "Register, result="

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "packageName"

    const-string/jumbo v6, "android"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "appId"

    const-string v7, "84r8rhjayk"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "version"

    sget-object v7, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->VERSION:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "receiverPackageName"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v5, Lcom/android/server/am/mars/database/scpm/ScpmApiContract;->URI:Landroid/net/Uri;

    const-string/jumbo v7, "register"

    iget-object v8, v0, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v5, v7, v6, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    const-string/jumbo v5, "token"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->mToken:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "result"

    const/4 v6, 0x2

    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", code="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rcode"

    const/4 v6, -0x1

    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rmsg"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, v0, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->mToken:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;->values()[Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    :try_start_1
    sget-object v5, Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;->MARS_ARCHIVE_TARGET_LIST:Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;

    if-ne v4, v5, :cond_1

    const-string/jumbo v4, "systemperf3-archivepolicy-fe7b"

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->getScpmFileDescriptor(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "exception : "

    invoke-static {v0, v2, v1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method
