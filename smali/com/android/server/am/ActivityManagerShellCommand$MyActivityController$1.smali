.class public final Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

.field public final synthetic val$converter:Ljava/io/InputStreamReader;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;Ljava/io/InputStreamReader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Ljava/io/BufferedReader;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;

    if-nez v4, :cond_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GDB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
