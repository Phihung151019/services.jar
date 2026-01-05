.class public final Lcom/android/server/am/PhantomProcessRecord$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/PhantomProcessRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/PhantomProcessRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string/jumbo v0, "Process "

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/PhantomProcessRecord;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is still alive after "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/PhantomProcessRecord$1;->this$0:Lcom/android/server/am/PhantomProcessRecord;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mZombie:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/PhantomProcessRecord;->onProcDied(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
