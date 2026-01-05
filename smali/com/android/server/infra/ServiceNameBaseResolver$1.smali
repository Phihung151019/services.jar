.class public final Lcom/android/server/infra/ServiceNameBaseResolver$1;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/infra/ServiceNameBaseResolver;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/infra/ServiceNameBaseResolver;Landroid/os/Looper;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->this$0:Lcom/android/server/infra/ServiceNameBaseResolver;

    iput p3, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->val$userId:I

    const/4 p1, 0x0

    const/4 p3, 0x1

    invoke-direct {p0, p2, p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->this$0:Lcom/android/server/infra/ServiceNameBaseResolver;

    iget-object v0, p1, Lcom/android/server/infra/ServiceNameBaseResolver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->this$0:Lcom/android/server/infra/ServiceNameBaseResolver;

    iget p0, p0, Lcom/android/server/infra/ServiceNameBaseResolver$1;->val$userId:I

    invoke-virtual {p1, p0}, Lcom/android/server/infra/ServiceNameBaseResolver;->resetTemporaryService(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const-string/jumbo p0, "ServiceNameBaseResolver"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "invalid handler msg: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
