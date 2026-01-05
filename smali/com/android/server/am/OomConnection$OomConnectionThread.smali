.class public final Lcom/android/server/am/OomConnection$OomConnectionThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/OomConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OomConnection$OomConnectionThread;->this$0:Lcom/android/server/am/OomConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/server/am/OomConnection;->-$$Nest$smwaitOom()[Landroid/os/OomKillRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OomConnection$OomConnectionThread;->this$0:Lcom/android/server/am/OomConnection;

    iget-object v1, v1, Lcom/android/server/am/OomConnection;->mOomListener:Lcom/android/server/am/ProcessList$1;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessList$1;->handleOomEvent([Landroid/os/OomKillRecord;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "failed waiting for OOM events: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "OomConnection"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
