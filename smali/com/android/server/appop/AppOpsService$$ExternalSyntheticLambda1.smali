.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/RemoteCallbackList$Builder$InterfaceDiedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appop/AppOpsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/internal/app/IAppOpsAsyncNotedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appop/AppOpsService;Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appop/AppOpsService;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    return-void
.end method


# virtual methods
.method public final onInterfaceDied(Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appop/AppOpsService;

    iget-object p3, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda1;->f$2:Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    check-cast p2, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    sget-boolean p2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    invoke-virtual {p1, p3, p0}, Lcom/android/server/appop/AppOpsService;->stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    return-void
.end method
