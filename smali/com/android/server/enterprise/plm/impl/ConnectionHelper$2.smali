.class public final Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(*) retry bind to service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    iget-object v1, v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mClassName:Ljava/lang/String;

    const-string v2, "ConnectionHelper"

    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    iget-object v1, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBinder:Landroid/os/IBinder;

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget v4, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I

    sub-int/2addr v4, v3

    iput v4, v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I

    if-ltz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timeout expired, keep retrying... ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    iget v1, v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mBindCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bind timeout expired, but already bound to service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    iget-object v1, v1, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->mClassName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "bind timeout expired, stop retrying!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$2;->this$0:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;->resetBindTimer(Z)V

    return-void
.end method
