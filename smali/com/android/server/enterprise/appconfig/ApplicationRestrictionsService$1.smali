.class public final Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;
.super Landroid/os/RemoteCallbackList;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/knox/appconfig/IApplicationRestrictionsResultCallback;

    iget-object p0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;->this$0:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;

    iget-object p0, p0, Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService;->mCallbacks:Lcom/android/server/enterprise/appconfig/ApplicationRestrictionsService$1;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
