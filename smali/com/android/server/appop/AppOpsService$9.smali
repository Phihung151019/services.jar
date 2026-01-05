.class public final Lcom/android/server/appop/AppOpsService$9;
.super Landroid/os/RemoteCallbackList;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final synthetic val$callback:Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$9;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$9;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$9;->val$callback:Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;)V
    .locals 1

    check-cast p1, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$9;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$9;->val$packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$9;->val$callback:Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/appop/AppOpsService;->stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    return-void
.end method
