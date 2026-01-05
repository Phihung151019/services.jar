.class public final synthetic Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BackgroundInstallControlService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BackgroundInstallControlService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/BackgroundInstallControlService;

    return-void
.end method


# virtual methods
.method public final onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/BackgroundInstallControlService;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mHandler:Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
