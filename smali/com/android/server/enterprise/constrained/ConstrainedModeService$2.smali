.class public final Lcom/android/server/enterprise/constrained/ConstrainedModeService$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/constrained/ConstrainedModeService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$2;->this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string/jumbo v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$2;->this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->updateConstrainedStateData(Z)V

    move v0, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
