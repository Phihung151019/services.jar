.class public final Lcom/android/server/location/LocationManagerService$ProcessListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/ActivityManager$SemProcessListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 0

    return-void
.end method

.method public final onProcessDied(II)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object p1, p1, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/location/LocationManagerService$ProcessListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/location/LocationManagerService$ProcessListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/LocationManagerService$ProcessListener;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
