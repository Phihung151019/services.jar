.class public final Lcom/android/server/DirEncryptService$1;
.super Landroid/os/IVoldTaskListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DirEncryptService;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(ILandroid/os/PersistableBundle;)V
    .locals 0

    const-string/jumbo p0, "onFinished ::"

    const-string p2, "DirEncryptService"

    invoke-static {p1, p0, p2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStatus(ILandroid/os/PersistableBundle;)V
    .locals 5

    const/16 v0, 0x2ae

    const/16 v1, 0x15e

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x2ab

    if-ne p1, v0, :cond_3

    const-string/jumbo v0, "description"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "status"

    invoke-virtual {p2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "success"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne v3, v0, :cond_1

    const/16 v0, 0x15f

    goto :goto_0

    :cond_1
    const/16 v0, 0x161

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/sec/enterprise/auditlog/AuditLog;->logEvent(I[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/DirEncryptService$1;->this$0:Lcom/android/server/DirEncryptService;

    iget-object v0, v0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/android/server/DirEncryptService$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/DirEncryptService$1$1;-><init>(Lcom/android/server/DirEncryptService$1;ILandroid/os/PersistableBundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    const-string p0, "DirEncryptService"

    const-string/jumbo p1, "onStatus mHandler == null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
