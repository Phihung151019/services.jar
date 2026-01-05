.class public final synthetic Lcom/android/server/am/MARsTrigger$14$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$14$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/MARsTrigger$14$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    sget-object v0, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->VERSION:Ljava/lang/String;

    const-class v0, Lcom/android/server/am/mars/database/scpm/ScpmHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/mars/database/scpm/ScpmHelper$ScpmHelperHolder;->INSTANCE:Lcom/android/server/am/mars/database/scpm/ScpmHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-string/jumbo v0, "com.samsung.android.scpm.policy.UPDATE.systemperf3-archivepolicy-fe7b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;->NONE:Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;

    iput-object p0, v1, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->mMessageType:Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;->MARS_ARCHIVE_TARGET_LIST:Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;

    iput-object p0, v1, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->mMessageType:Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;

    :goto_0
    :try_start_1
    iget-object p0, v1, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->mMessageType:Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;

    sget-object v0, Lcom/android/server/am/mars/database/scpm/ScpmApiContract;->URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;->MARS_ARCHIVE_TARGET_LIST:Lcom/android/server/am/mars/database/scpm/ScpmApiContract$MessageType;

    if-ne p0, v0, :cond_1

    const-string/jumbo p0, "systemperf3-archivepolicy-fe7b"

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v1, p0}, Lcom/android/server/am/mars/database/scpm/ScpmHelper;->getScpmFileDescriptor(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_2
.end method
