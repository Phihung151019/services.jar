.class public final Lcom/android/internal/util/jobs/ConcurrentUtils$1$1;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/internal/util/jobs/ConcurrentUtils$1;

.field public final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/jobs/ConcurrentUtils$1;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/jobs/ConcurrentUtils$1$1;->this$0:Lcom/android/internal/util/jobs/ConcurrentUtils$1;

    iput-object p3, p0, Lcom/android/internal/util/jobs/ConcurrentUtils$1$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/jobs/ConcurrentUtils$1$1;->this$0:Lcom/android/internal/util/jobs/ConcurrentUtils$1;

    iget v0, v0, Lcom/android/internal/util/jobs/ConcurrentUtils$1;->val$linuxThreadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object p0, p0, Lcom/android/internal/util/jobs/ConcurrentUtils$1$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
